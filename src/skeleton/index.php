<?php
declare(strict_types = 1);
define('PHP_START', microtime(true));
error_reporting(E_ALL); ini_set('display_errors', '1'); ini_set('display_startup_errors', '1'); ini_set('log_errors', '1');


$dt = new DateTime('2019-02-01T03:45:27+00:00');

print_r($dt);

echo sprintf('[ %s ] take %2.5f mili seconds to complete',$_server['php_self'],microtime(true)-php_start). php_eol;
