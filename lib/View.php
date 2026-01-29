<?php

/**
 * PrivateBin.
 *
 * a zero-knowledge paste bin
 *
 * @see      https://github.com/PrivateBin/PrivateBin
 *
 * @copyright 2012 Sébastien SAUVAGE (sebsauvage.net)
 * @license   https://www.opensource.org/licenses/zlib-license.php The zlib/libpng License
 *
 * @version   1.5.1
 */

namespace PrivateBin;

/**
 * View.
 *
 * Displays the templates
 */
class View
{
	/**
	 * variables available in the template.
	 *
	 * @var array
	 */
	private $_variables = [];

	/**
	 * assign variables to be used inside of the template.
	 *
	 * @param string $name
	 */
	public function assign($name, $value)
	{
		$this->_variables[$name] = $value;
	}

	/**
	 * render a template.
	 *
	 * @param string $template
	 *
	 * @throws \Exception
	 */
	public function draw($template)
	{
		$file = 'bootstrap' === substr($template, 0, 9) ? 'bootstrap' : $template;
		$path = PATH.'tpl'.DIRECTORY_SEPARATOR.$file.'.php';
		if (!file_exists($path)) {
			throw new \Exception('Template '.$template.' not found!', 80);
		}
		extract($this->_variables);

		include $path;
	}
}
