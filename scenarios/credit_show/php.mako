%if mode == 'definition':
Balanced\Credit::get()

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-Hznf9GhTb2Xkj7fGwVD6lZSMH5F1eTRl";

$credit = Balanced\Credit::get("/credits/CR3jlMtcAQzaonIVb40vT0FP");

?>
%endif