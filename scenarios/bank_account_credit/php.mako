%if mode == 'definition':
Balanced\BankAccount->credits->create()

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-Hznf9GhTb2Xkj7fGwVD6lZSMH5F1eTRl";

$bank_account = Balanced\BankAccount::get("/bank_accounts/BA3BkV8D5D77J22Ktzx8lyI0");
$bank_account->credits->create(array(
    "amount" => "5000",
));

?>
%endif