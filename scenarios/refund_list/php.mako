%if mode == 'definition':
Balanced\Marketplace::mine()->refunds

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-Hznf9GhTb2Xkj7fGwVD6lZSMH5F1eTRl";

$marketplace = Balanced\Marketplace::mine();
$refunds = $marketplace->refunds->query()->all();

?>
%endif