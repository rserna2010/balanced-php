%if mode == 'definition':
Balanced\BankAccountVerification::get

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-Hznf9GhTb2Xkj7fGwVD6lZSMH5F1eTRl";

$verification = Balanced\BankAccountVerification::get("/verifications/BZ2IwbiCLnZS40mbTVd1F3Rf");

?>
%endif