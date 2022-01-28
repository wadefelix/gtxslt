<?php
$fn=$_GET["f"];
$url = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
if (!$fn) {
    die('no query param. call as '.$url.'?f=sample1_unittest.xml');
} else if (!file_exists($fn)) {
    die($fn.' not exists.');
}

header('Content-Type: application/xml');
$xmllines=file($fn);

print_r($xmllines[0]);
print(<<<XSLDTD
<?xml-stylesheet type="text/xsl" href="gtest-result.xsl" ?>
<!DOCTYPE testsuites SYSTEM "gtest-result.dtd">

XSLDTD);
print_r(join('', array_slice($xmllines,1)));
?>