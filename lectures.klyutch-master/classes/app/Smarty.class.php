<?php
namespace app;
require_once ROOT . 'classes/smarty/Smarty.class.php';


/**
 * Надстройка над смарти
 */
class Smarty extends \Smarty
{
    /**
     * @var array
     */
    private static $aCSS = array();

    /**
     * @var array
     */
    private static $aJS = array();

    /**
     * @var array
     */
    private static $aTitle = array();

	/**
	 * Конструктор
	 */
	public function __construct()
    {
		parent::__construct();

		$this->template_dir = TEMPLATES_PATH;
        $this->compile_dir = DATA_DIR . 'smarty/compile/';

		$this->left_delimiter = '{{';
		$this->right_delimiter = '}}';

		$this->error_reporting = E_ALL;
	}

    /**
     * Получение собранной строки с заголовком
     *
     * @return string
     */
    public function getTitle()
    {
        if (empty(self::$aTitle)) {
            return '';
        }

        $sTitle = implode(' | ', self::$aTitle);

        return $sTitle;
    }

	/**
	 * Подключение файла стиля
	 *
	 * @param string $sSource
	 */
	public function appendCSS($sSource)
    {
        $sPath = PUBLIC_ROOT . 'css/' . $sSource . '.css';

        if (is_readable($sPath) && !in_array($sSource, self::$aCSS)) {
            $this->append('css', $sSource . '.css?' . filemtime($sPath));
            self::$aCSS[] = $sSource;
        }
	}

	/**
	 * Подключение JS-файла
	 *
	 * @param string $sSource
	 */
	public function appendJS($sSource)
    {
        $sPath = PUBLIC_ROOT . 'js/' . $sSource . '.js';

        if (is_readable($sPath) && !in_array($sSource, self::$aJS)) {
            $this->append('js', $sSource . '.js?' . filemtime($sPath));
            self::$aJS[] = $sSource;
        }
	}

	/**
	 * Добавление текста к заголовку страницы
	 *
	 * @param string $sTitleText
     * @param boolean $bPrepend
	 */
    public function appendTitle($sTitleText, $bPrepend = false)
    {
        if (is_string($sTitleText) && !empty($sTitleText)) {
            $iResult = $bPrepend
                     ? array_unshift(self::$aTitle, $sTitleText)
                     : array_push(self::$aTitle, $sTitleText);
        }
    }
}
