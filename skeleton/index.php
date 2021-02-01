<?php
define('PHP_START', microtime(true));

/*error_reporting(E_ALL); ini_set('display_errors', '1'); ini_set("display_startup_errors", '1'); ini_set("log_errors", '1'); */ 

//,phpinfo();
echo sprintf("Total execution time of script is [%2.5f] milisecounds",microtime(true) - PHP_START);
