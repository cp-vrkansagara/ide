<?php
declare(strict_types = 1);
define('PHP_START', microtime(true));
error_reporting(E_ALL); ini_set('display_errors', '1'); ini_set('display_startup_errors', '1'); ini_set('log_errors', '1');

// $dt = new DateTime('2019-02-01T03:45:27+00:00');
$dt = new DateTime();

$array = array();

print_r($dt->datetime);

echo sprintf('[ %s ] take %2.5f milliseconds  to complete',$_SERVER['PHP_SELF'],microtime(true)-PHP_START). PHP_EOL;
