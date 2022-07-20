<?php

use App\Models\Student;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Validator;

// You should handle in backend these things :
// 1. email verification
// 2. cv will be uploaded as a pdf when register student or update student
// 3. when an advertiser send a status of accepted for an application,  you should add a bill for the student who applied
//for the job no matter what is the amount for the bill " we have the choice for the amount "
//4. advertiser should pay a bill after one week from register


/**
 * login
 * @param String email /required / validation
 * @param String password /required / validation
 * @param int user_type
 *
 * @return Student or Advertiser
 */


Route::post('/login', function (Request $request) {
    $input = $request->all();

    $validator = Validator::make($request->all(), [
        'email' => 'required|email',
        'password' => 'required|min:8'
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }

    if (auth('student')->attempt(['email' => $input['email'],
        'password' => $input['password']], false)) {


        $user = \App\Models\Student::where([
            'email' => $input['email']
        ])->first();
        $user->type = 1;

        return Response::json([
            'message' => 'User founded!',
            'data' => $user
        ], 200);
    }
    if (auth('advertiser')->attempt(['email' => $input['email'],
        'password' => $input['password']], false)) {


        $user = \App\Models\Advertiser::where([
            'email' => $input['email']
        ])->first();
        $user->type = 2;

        return Response::json([
            'message' => 'User founded!',
            'data' => $user
        ], 200);
    } else {
        return Response::json([
            'message' => 'User not found!',
            'data' => ''
        ], 200);
    }


});

/**
 * register_student
 * @param String name /required
 * @param String nick_name /required
 * @param String user_name /required
 * @param String email /required / validation / *** verification ***
 * @param String password /required / validation
 * @param String phone /required
 * @param Date birth_date /required
 * @param int gender /required
 * @param String study_type /required
 * @param String study_place /required
 * @param Date start_study /required
 * @param Date end_study default not existed  /required
 * @param file cv /required
 *
 * @return Student + boolean study_is_going :if end_study is not existed
 */


Route::post('/register_student', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'name' => 'required',
        'nick_name' => 'required',
        'user_name' => 'required',
        'phone' => 'required',
        'birth_date' => 'required|date',
        'gender' => 'required',
        'study_type' => 'required',
        'start_study' => 'required',
        'cv' => 'required',
        'study_place' => 'required',
        'email' => 'required|email|unique:students,email',
        'password' => 'required|min:8'
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }


    $cv = '';
    $file_param = 'cv';
     if ($request->hasFile($file_param)) {
        $file_name = md5(time()) . '.' . $request->file($file_param)->getClientOriginalExtension();
        $request->file($file_param)->move(storage_path('app\public\upload'), $file_name);
        $cv = '[{"download_link":"'.'upload\\\\' . $file_name.'","original_name":"'. $file_name.'"}]';
//        $cv = 'upload/' . $file_name;
    }


    $data = new \App\Models\Student();
    $data->password = bcrypt($request->password);
    $data->email = $request->input('email');
    $data->nick_name = $request->input('nick_name');
    $data->user_name = $request->input('user_name');
    $data->phone = $request->input('phone');
    $data->birth_date = $request->input('birth_date');
    $data->gender = $request->input('gender');
    $data->study_place = $request->input('study_place');
    $data->study_type = $request->input('study_type');
    $data->study_start_date = $request->input('start_study');
    $data->study_end_date = $request->has('end_study') ? $request->input('end_study') : null;
    $data->status = rand(111111, 999999);
    $data->cv_url = $cv;
    $data->save();

    try {
        $email = $data->email;
        Mail::send('code', [
            'code' => $data->status
        ], function ($message) use ($email) {
            $message->to($email, 'Code')->subject
            ('Code');
            $message->from('std@scit.co', 'Code');
        });


//        $msg = "Your Code is : " . $data->status;
//        $msg = wordwrap($msg, 70);
//        mail($email, "My Code", $msg);

    } catch (\Exception $ex) {
        \Log::info($ex->getMessage());
    }

    return Response::json([
        'message' => 'User Saved!',
        'data' => $data
    ], 200);

});

/**
 * update_student
 * @param int user_id /required
 * @param String name /optional
 * @param String nick_name /optional
 * @param String user_name /optional
 * @param String phone /optional
 * @param String study_type / optional
 * @param String study_place /optional
 * @param String end_study /optional
 * @param file cv /optional
 *
 * @return Student + boolean study_is_going :if end_study is not existed
 */


Route::post('/update_student', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'user_id' => 'required'
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }


    $cv = '';
    $file_param = 'cv';
    if ($request->hasFile($file_param)) {
        $file_name = md5(time()) . '.' . $request->file($file_param)->getClientOriginalExtension();
        $request->file($file_param)->move(public_path('upload'), $file_name);
        $cv = 'upload/' . $file_name;
    }


    $data = Student::where('id', $request->user_id)->first();
    $data->password = ($request->password && strlen($request->password) > 0) ? bcrypt($request->password) : $data->password;
    $data->email = $request->has('email') ? $request->input('email') : $data->email;
    $data->nick_name = $request->has('nick_name') ? $request->input('nick_name') : $data->nick_name;
    $data->user_name = $request->has('user_name') ? $request->input('user_name') : $data->user_name;
    $data->phone = $request->has('phone') ? $request->input('phone') : $data->phone;
    $data->birth_date = $request->has('birth_date') ? $request->input('birth_date') : $data->birth_date;
    $data->gender = $request->has('gender') ? $request->input('gender') : $data->gender;
    $data->study_type = $request->has('study_type') ? $request->input('study_type') : $data->study_type;
    $data->study_start_date = $request->has('start_study') ? $request->input('start_study') : $data->start_study;
    $data->end_study = $request->has('end_study') ? $request->input('end_study') : $data->end_study;
    $data->study_place = $request->has('study_place') ? $request->input('study_place') : $data->study_place;
    $data->cv_url = $request->hasFile($file_param) ? $cv : $data->cv_url;
    $data->update();

    return Response::json([
        'message' => 'User Saved!',
        'data' => $data
    ], 200);

});


/**
 * get_job_opportunities
 * @ no params
 *
 * @return List of Job Opportunities
 *  Every object should have this information:
 *  - int id;
 *  - String advertiser_name;// from advertiser table
 *  - String title;
 *  - String company_name;
 *  - String job_location;
 *   String position;
 *   String required_skills;
 *   String details;
 *   String created_at;
 */


Route::get('/get_job_opportunities', function (Request $request) {


    $data = \App\Models\JobOpportunity::get();

    return Response::json([
        'message' => 'Found!',
        'data' => $data
    ], 200);

});


/**
 * get_job_applications
 * @param int student_id
 * note: form /JOB_REQUESTS TABLE/
 *
 * @return List of Job requests
 *  Every object should have this information:
 *  - int id;
 *  - String job_title;//from job_opportunities table
 *  - String job_location;//from job_opportunities table
 *  - String company_name;//from job_opportunities table
 *  - int status;
 *  - date created_at;
 */

Route::get('/get_job_applications', function (Request $request) {


    $data = \App\Models\JobRequest::where('student_id', $request->student_id)->get();

    return Response::json([
        'message' => 'Found!',
        'data' => $data
    ], 200);

});


/**
 * apply_job
 * @param int job_id //required
 * @param int student_id //required
 *
 * @return
 * status of the api request in any shape you choose
 */


Route::post('/apply_job', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'job_id' => 'required',
        'student_id' => 'required'
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }


    $data = new \App\Models\JobRequest();
    $data->student_id = $request->student_id;
    $data->job_id = $request->job_id;
    $data->save();

    return Response::json([
        'message' => 'Saved!',
        'data' => $data
    ], 200);

});

/**
 * add_course
 * @param int student_id //required
 * @param String institution //required
 * @param String course_name //required
 * @param date start_date // required/ no validation
 * @param date end_date //required/ no validation
 *
 * @return
 * status of api request
 */


Route::post('/add_course', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'student_id' => 'required',
        'institution' => 'required',
        'course_name' => 'required',
        'start_date' => 'required',
        'end_date' => 'required',
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }


    $data = new \App\Models\StudentCourse();
    $data->student_id = $request->student_id;
    $data->institution = $request->institution;
    $data->course_name = $request->course_name;
    $data->start_date = $request->start_date;
    $data->end_date = $request->end_date;
    $data->save();

    return Response::json([
        'message' => 'Saved!',
        'data' => $data
    ], 200);

});

/**
 * add_interest
 * @param int student_id
 * @param String interest
 *
 * @return
 * status of api request
 */

Route::post('/add_interest', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'student_id' => 'required',
        'interest' => 'required'
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }


    $data = new \App\Models\StudentInterest();
    $data->user_id = $request->student_id;
    $data->interest_name = $request->interest;
    $data->save();

    return Response::json([
        'message' => 'Saved!',
        'data' => $data
    ], 200);

});

/**
 *
 */
/**
 * student_has_bill
 * @param int user_id
 *
 * @return
 * - boolean has_bill // this will be true if there is in student_bills table a record with false value for is_paid
 * - int bill_id
 * - int amount
 * - date created_at
 */

Route::get('/student_has_bill', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'user_id' => 'required'
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }


    $data = \App\Models\StudentBill::where('student_id', $request->student_id)->orderBy('id', 'desc')->first();
    return Response::json([
        'message' => 'Saved!',
        'data' => $data
    ], 200);

});

/**
 * student_pay_bill
 * note: change is_paid value of this bill record to true
 * @param int user_id
 * @param int bill_id
 *
 * @return
 * status of api request
 */


Route::post('/student_pay_bill', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'user_id' => 'required',
        'bill_id' => 'required'
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }


    $data = \App\Models\StudentBill::where([
        'student_id' => $request->user_id,
        'id' => $request->bill_id,
    ])->update([
        'is_paid' => 1
    ]);

    return Response::json([
        'message' => 'Saved!',
        'data' => $data
    ], 200);

});

/**
 * get_courses
 * @param int user_id
 * @return List of courses from STUDENT_COURSES TABLE
 * Every Object should have this information:
 *  - int id     //id of record not user_id
 *  - String course_name
 *  - String institution
 *  - date start_date
 *  - date end_date
 */

Route::get('/get_courses', function (Request $request) {


    $data = \App\Models\StudentCourse::where('student_id', $request->user_id)->get();

    return Response::json([
        'message' => 'Saved!',
        'data' => $data
    ], 200);

});

/**
 * get_interests
 * @param int user_id
 * @return List of interests from STUDENT_INTERESTS TABLE
 * Every Object should have this information:
 *  - int id     //id of record not user_id
 *  - String interest_name
 */


Route::get('/get_interests', function (Request $request) {


    $data = \App\Models\StudentInterest::where('user_id', $request->user_id)->get();

    return Response::json([
        'message' => 'Saved!',
        'data' => $data
    ], 200);

});


/**
 * register_advertiser
 * @param String name // required
 * @param String phone //required
 * @param String email //required/validation/ verification
 * @param String password//required/validation
 * @param String website //required/ validation
 * @param String description//required
 * @param String address//required
 * @param int years_of_incorporation //required
 * @param String professional_fields //required
 *
 * @return Advertiser
 */


Route::post('/register_advertiser', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'name' => 'required',
        'phone' => 'required',
        'email' => 'required|email|unique:advertiser,email',
        'password' => 'required|min:8',
        'website' => 'required',
        'description' => 'required',
        'address' => 'required',
        'years_of_incorporation' => 'required',
        'professional_fields' => 'required'
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }


    $data = new \App\Models\Advertiser();
    $data->password = bcrypt($request->password);
    $data->email = $request->input('email');
    $data->name = $request->input('name');
    $data->phone = $request->input('phone');
    $data->website = $request->input('website');
    $data->description = $request->input('description');
    $data->address = $request->input('address');
    $data->years_of_incorporation = $request->input('years_of_incorporation');
    $data->professional_field = $request->input('professional_fields');
    $data->status = rand(111111, 999999);
    $data->save();

    try {
        $email = $data->email;
        Mail::send('code', [
            'code' => $data->status
        ], function ($message) use ($email) {
            $message->to($email, 'Code')->subject
            ('Code');
            $message->from('std@scit.co', 'Code');
        });


//        $msg = "Your Code is : " . $data->status;
//        $msg = wordwrap($msg, 70);
//        mail($email, "My Code", $msg);

    } catch (\Exception $ex) {
        \Log::info($ex->getMessage());
    }

    return Response::json([
        'message' => 'User Saved!',
        'data' => $data
    ], 200);

});


/**
 * update_advertiser
 * @param int advertiser_id//required
 * @param String advertiser_name//optional
 * @param String phone //optional
 * @param String website //optional
 * @param String location//optional
 * @param String int years_of_incorporation //optional
 * @param String professional_fields //optional
 *
 * @return Advertiser
 */


Route::post('/update_advertiser', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'advertiser_id' => 'required'
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }

    $data = \App\Models\Advertiser::where('id', $request->advertiser_id)->first();
    $data->password = ($request->password && strlen($request->password) > 0) ? bcrypt($request->password) : $data->password;
    $data->name = $request->has('name') ? $request->input('name') : $data->name;
    $data->phone = $request->has('phone') ? $request->input('phone') : $data->phone;
    $data->website = $request->has('website') ? $request->input('website') : $data->website;
    $data->address = $request->has('location') ? $request->input('location') : $data->address;
    $data->years_of_incorporation = $request->has('years_of_incorporation') ? $request->input('years_of_incorporation') : $data->years_of_incorporation;
    $data->professional_field = $request->has('professional_fields') ? $request->input('professional_fields') : $data->professional_field;
    $data->update();

    return Response::json([
        'message' => 'User Saved!',
        'data' => $data
    ], 200);

});


/**
 * post_job_opportunity
 * @param int advertiser_id //required
 * @param String title; //required
 * @param String company_name;  //required
 * @param String job_location;  //required
 * @param String position;  //required
 * @param String required_skills;  //required
 * @param String details;  //required
 * @param String created_at;  //required
 *
 * @return
 * status of api request
 */


Route::post('/post_job_opportunity', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'advertiser_id' => 'required',
        'title' => 'required',
        'company_name' => 'required',
        'job_location' => 'required',
        'position' => 'required',
        'required_skills' => 'required',
        'details' => 'required',
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }


    $data = new \App\Models\JobOpportunity();
    $data->advertiser_id = $request->input('advertiser_id');
    $data->title = $request->input('title');
    $data->company_name = $request->input('company_name');
    $data->job_location = $request->input('job_location');
    $data->position = $request->input('position');
    $data->required_skills = $request->input('required_skills');
    $data->details = $request->input('details');
    $data->save();

    return Response::json([
        'message' => 'User Saved!',
        'data' => $data
    ], 200);

});


/**
 * get_posted_jobs
 * note: from JOB_OPPORTUNITIES TABLE which were posted by this advertiser
 * @param int advertiser_id
 *
 * @return List of JobOpportunities which were posted by this advertiser
 *  Every object should have this information:
 *   int id;
 *   String title;
 *   String company_name;
 *   String job_location;
 *   String position;
 *   String required_skills;
 *   String details;
 *   String created_at;
 */


Route::get('/get_posted_jobs', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'advertiser_id' => 'required'
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }


    $data = \App\Models\JobOpportunity::where('advertiser_id', $request->advertiser_id)->get();

    return Response::json([
        'message' => 'User Saved!',
        'data' => $data
    ], 200);

});


/**
 * delete_job_opportunity
 * @param int advertiser_id
 * @param int job_opportunity_id
 *
 * @return
 * status of api request
 */


Route::post('/delete_job_opportunity', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'advertiser_id' => 'required',
        'job_opportunity_id' => 'required',
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }


    $data = \App\Models\JobOpportunity::
    where('id', $request->job_opportunity_id)->
    where('advertiser_id', $request->advertiser_id)->delete();

    return Response::json([
        'message' => 'User Saved!',
        'data' => $data
    ], 200);

});


/**
 * get_job_requests
 * @param int advertiser_id
 * note: form /JOB_REQUESTS TABLE/ which were applied on jobs were posted by this advertiser
 *
 * @return List of Job requests
 *  Every object has this information:
 *  - int id;
 *  - String student_name//who applied for the job
 *  - String job_title;//from job_opportunities table
 *  - String job_location;//from job_opportunities table
 *  - String company_name;//from job_opportunities table
 *  - int status;
 *  - Date created_at;
 */


Route::get('/get_job_requests', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'advertiser_id' => 'required'
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }


    $data = \App\Models\JobRequest::select('job_requests.*')->
    join('job_opportunities', 'job_opportunities.id', '=', 'job_requests.job_id')->
    where('job_opportunities.advertiser_id', $request->advertiser_id)->get();

    return Response::json([
        'message' => 'User Saved!',
        'data' => $data
    ], 200);

});


/**
 * advertiser_has_bill
 * @param int advertiser_id
 *
 * @return
 * - boolean has_bill // this will be true if there is in advertiser_bills table a record with false value for is_paid
 * - int bill_id
 * - int amount
 * - date created_at
 */

Route::get('/advertiser_has_bill', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'advertiser_id' => 'required'
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }


    $data = \App\Models\AdvertiserBill::where('advertiser_id', $request->advertiser_id)->orderBy('id', 'desc')->first();
    return Response::json([
        'message' => 'Saved!',
        'data' => $data
    ], 200);

});

/**
 * advertiser_pay_bill
 * note: change is_paid value of this bill record to true
 * @param int advertiser_id
 * @param int bill_id
 *
 * @return
 * status of api request
 */

Route::post('/advertiser_pay_bill', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'advertiser_id' => 'required',
        'bill_id' => 'required'
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }


    $data = \App\Models\AdvertiserBill::where([
        'advertiser_id' => $request->advertiser_id,
        'id' => $request->bill_id,
    ])->update([
        'is_paid' => 1
    ]);

    return Response::json([
        'message' => 'Saved!',
        'data' => $data
    ], 200);

});

/**
 * change_request_status
 * @param int advertiser_id
 * @param int job_request_id
 * @param int status
 *
 * @return
 * status of api request
 */


Route::post('/change_request_status', function (Request $request) {

    $validator = Validator::make($request->all(), [
        'job_request_id' => 'required',
        'status' => 'required',
    ]);

    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }

    $data = \App\Models\JobRequest::where([
        'id' => $request->job_request_id
    ])->first();
    $data->status = $request->input('status');
    $data->update();


    return Response::json([
        'message' => 'Saved!',
        'data' => $data
    ], 200);

});


Route::post('/verify_user', function (Request $request) {
    $input = $request->all();

    $validator = Validator::make($request->all(), [
        'type' => 'required',
        'code' => 'required',
        'email' => 'required'
    ]);


    if ($validator->fails()) {
        return Response::json([
            'message' => 'Error Input Data',
            'data' => $validator->getMessageBag()
        ], 400);
    }

    if ((int)$input['type'] == 1) {

        $user = \App\Models\Student::where([
            'email' => $input['email']
        ])->first();


    } else {
        $user = \App\Models\Advertiser::where([
            'email' => $input['email']
        ])->first();

    }

    if ($user->status . '' != $input['code']) {
        return Response::json([
            'message' => 'Code not Correct!',
            'data' => $user
        ], 200);
    }


    $user->status = 1;
    $user->update();

    return Response::json([
        'message' => 'User founded!',
        'data' => $user
    ], 200);


});


Route::get('/get_all_students', function (Request $request) {

    $data = Student::get();


    return Response::json([
        'message' => 'Got!',
        'data' => $data
    ], 200);

});
