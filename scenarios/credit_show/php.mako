%if mode == 'definition':
Balanced\Credit::get()

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD";

$credit = Balanced\Credit::get("/v1/marketplaces/TEST-MP4K6K0PWGyPtXL4LZ42sQSb/credits/CR5YK26rTyl5vlFK928nhxUI");

?>
%endif