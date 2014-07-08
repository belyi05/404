<?php

require_once '../common.php';

$oSmarty = new \app\Smarty();

/* разбор и отправка заголовков */

header('Content-Type: text/html; charset="utf-8"');

// полученный от Nginx URI
define('URI', isset($_GET['PATH']) ? (string) $_GET['PATH'] : null);

/* подключение модулей и шаблонов */

$sModulePath = ROOT . 'modules/' . URI . 'index.php';
$sTemplatePath = TEMPLATES_PATH . 'modules/' . URI . 'index.tpl';

// выдаем 404 ошибку, если файлы модуля не найдены
if (!is_readable($sModulePath)) {
    header("HTTP/1.0 404 Not Found");
}

/* настройки смарти */

$oSmarty->appendTitle('Test application', true);

$oSmarty->appendCSS('vendor/bootstrap/bootstrap.min');

$oSmarty->appendJS('vendor/jquery/jquery-2.1.1.min');
$oSmarty->appendJS('vendor/bootstrap/bootstrap.min');

/* подключаем модуль */

//require_once $sModulePath;

$oSmarty->assign('page_header_title', $oSmarty->getTitle());

// отображаем шаблон
$oSmarty->display(TEMPLATES_PATH . 'layouts/main.tpl');
