<?php
/*
* Workday - A time clock application for employees
* Support: official.codefactor@gmail.com
* Version: 1.6
* Author: Brian Luna
* Copyright 2020 Codefactor
*/
namespace App\Http\Controllers\admin;
use DB;
use App\Classes\Table;
use App\Classes\Permission;
use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{

    public function index(Request $request) 
    {
        if (permission::permitted('dashboard')=='fail'){ return redirect()->route('denied'); }
        
        $datenow = date('Y-m-d'); 
        $is_online = table::attendance()->where('date', $datenow)->pluck('idno');
        $is_online_arr = json_decode(json_encode($is_online), true);
        $is_online_now = count($is_online); 

        $emp_ids = table::companydata()->pluck('idno');
        $emp_ids_arr = json_decode(json_encode($emp_ids), true); 
        $is_offline_now = count(array_diff($emp_ids_arr, $is_online_arr));
        $tf = table::settings()->value("time_format");
        
		$emp_all_type = table::people()
        ->join('company_data', 'people.id', '=', 'company_data.reference')
        ->where('people.employmentstatus', 'Active')
        ->orderBy('company_data.startdate', 'desc')
        ->take(8)
        ->get();

		$emp_typeR = table::people()
        ->where('employmenttype', 'Regular')
        ->where('employmentstatus', 'Active')
        ->count();

		$emp_typeT = table::people()
        ->where('employmenttype', 'Trainee')
        ->where('employmentstatus', 'Active')
        ->count();

		$emp_allActive = table::people()
        ->where('employmentstatus', 'Active')
        ->count();

        $a = table::attendance()
        ->latest('date')
        ->take(4)
        ->get();
        
        $emp_approved_leave = table::leaves()
        ->where('status', 'Approved')
        ->orderBy('leavefrom', 'desc')
        ->take(8)
        ->get();

		$emp_leaves_approve = table::leaves()
        ->where('status', 'Approved')
        ->count();

		$emp_leaves_pending = table::leaves()
        ->where('status', 'Pending')
        ->count();

		$emp_leaves_all = table::leaves()
        ->where('status', 'Approved')
        ->orWhere('status', 'Pending')
        ->count();

        return view('admin.dashboard', compact('tf', 'emp_typeR', 'emp_typeT', 'emp_allActive', 'emp_leaves_pending', 'emp_leaves_approve', 'emp_leaves_all', 'emp_approved_leave', 'emp_all_type','a', 'is_online_now', 'is_offline_now'));
    }
}
