<?php

define('ENV', getenv("ENV") ? getenv("ENV") : "development");

date_default_timezone_set('Europe/Moscow');

mb_internal_encoding('UTF-8');
mb_regex_encoding('UTF-8');

define('ROOT', realpath(dirname(__FILE__)) . '/');
define('PUBLIC', ROOT . 'public_root/');
define('PUBLIC_ROOT', ROOT . 'public_root/');
define('DATA_DIR', ROOT . 'data/');
define('TEMPLATES_PATH', ROOT . 'templates/');
define('LOCALES_PATH', ROOT . 'locales/');

error_reporting(E_ALL);
ini_set('display_errors', 'on');

require_once ROOT . 'config.php';
require_once ROOT . 'classes/app/Smarty.class.php';

/* автозагрузка классов */

spl_autoload_register (function($sClassName) {
    $sDirName = strtolower($sClassName);
    $sPath = ROOT . 'classes/' . $sDirName . '/' . $sClassName . '.class.php';

    if (is_readable($sPath)) {
        require_once $sPath;
        return true;
    }

    return false;
});
