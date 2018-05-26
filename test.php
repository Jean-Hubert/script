<?php

echo "test";

require './vendor/smarty/smarty/libs/Smarty.class.php';

$smarty = new Smarty;

$smarty->display('./Home.tpl');


?>