%if mode == 'definition':
Balanced\BankAccount->debits->create();

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-Hznf9GhTb2Xkj7fGwVD6lZSMH5F1eTRl";

$bank_account = Balanced\BankAccount::get("/bank_accounts/BA2FRIFG3IUSkPZYnFll6g8S");
$bank_account->debits->create(array(
    "amount" => "5000",
    "appears_on_statement_as" => "Statement text",
    "description" => "Some descriptive text for the debit in the dashboard",
));


?>
%endif