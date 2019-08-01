<?php
defined('BASEPATH') or exit('No direct script access allowed');

// Ahmad helpers
// label_management module 
function getArr($lang){
    $str = '<?php';
   foreach($lang as $key => $value){

       $str .= "\n$" . "lang['" . $key . "']" . ' = "' . str_replace('"', '\"', $value) . '";';
   }
   return $str;
}



function admin_assets()
{
    $CI = &get_instance();
    $CI->app_css->add('w3-css', 'assets/css/w3.css');
    $CI->app_scripts->add('hijri-js', 'assets/js/hijri-date.js');
    $CI->app_scripts->add('datepicker-js', 'assets/js/datepicker.js');
    $CI->app_scripts->add('custom-js', 'assets/js/custom.js');
}


//
function to_AD_date($date)
{
    $date_option = get_option('dateformat');
    $parts = explode('|', $date_option);
    if(isset($parts[2])){
        $date_mode = $parts[2]; //$this->app->get_option('date_format');
    }else{
        $date_mode = $parts[0]; //$this->app->get_option('date_format');
    }
//    $date_mode = 'hijri'; //get_option('date_format');

    if ($date_mode == 'hijri') {
        $hijriCalendar = new Calendar();
        $current_date = date_parse($date);
        $AD_date = $hijriCalendar->HijriToGregorian($current_date['year'], $current_date['month'], $current_date['day']);

        $date = $AD_date['y'] . '-' . $AD_date['m'] . '-' . $AD_date['d'];
    }

    return $date;
}

function to_hijri_date($date)
{
    $date_option = get_option('dateformat');
    $opt = explode('|', $date_option);

    if(isset($opt[2]) && $opt[2]=='hijri'){
        $datetime = explode(' ', $date);
        $date = new DateTime($datetime[0]);
        $hijriCalendar = new Calendar();
        $hijri_date = $hijriCalendar->GregorianToHijri($date->format('Y'), $date->format('m'), $date->format('d'));

         $date = $hijri_date['y'] . '-' . $hijri_date['m'] . '-' . $hijri_date['d'];

        // First condition for date and datetime
        // Second condition for 12 or 24 (Time Format)
        if (isset($datetime[1])){
        $date = isset($datetime[2]) ? $date.' '.$datetime[1].' '.$datetime[2] : $date.' '.$datetime[1]; 
        }
    }
        return $date;
}


hooks()->add_action('app_admin_assets_added', 'admin_assets');
hooks()->add_filter('before_sql_date_format', 'to_AD_date');
hooks()->add_filter('after_format_date', 'to_hijri_date');
hooks()->add_filter('after_format_datetime', 'to_hijri_date'); 


hooks()->add_filter('available_date_formats', 'add_hijri_option');
function add_hijri_option($date_formats)
{
    $date_formats ['Y-m-d|%Y-%m-%d|hijri']='hijri';
    return $date_formats;
}


