%if mode == 'definition':
Balanced\Card->unstore()


% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-Hznf9GhTb2Xkj7fGwVD6lZSMH5F1eTRl";

$card = Balanced\Card::get("/cards/CC37GCk6lm0X5OdtBmkLy6qc");
$card->unstore();


?>
%endif