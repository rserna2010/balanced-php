%if mode == 'definition':
Balanced\Marketplace::mine()->callbacks->query()->all()

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-2KZfoLyijij3Y6OyhDAvFRF9tXzelBLpD";

$marketplace = Balanced\Marketplace::mine();
$callbacks = $marketplace->callbacks->query()->all();

?>
%endif