%if mode == 'definition':
Balanced\Debit->refunds->create()

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-Hznf9GhTb2Xkj7fGwVD6lZSMH5F1eTRl";

$debit = Balanced\Debit::get("/debits/WD3SFdYOlB5RwfwLvkRtjoNA");

$debit->refunds->create(array(
    'description' => 'Refund for Order #1111',
    'meta' => array(
            "fulfillment.item.condition" => "OK",
            "merchant.feedback" => "positive",
            "user.refund_reason" => "not happy with product",
        )
));


?>
%endif