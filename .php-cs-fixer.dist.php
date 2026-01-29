<?php

$finder = (new PhpCsFixer\Finder())
	->in(__DIR__)
;

return (new PhpCsFixer\Config())
	->setRules([
		'@PER-CS' => true,
		'@PSR12' => true,
		'strict_param' => true,
		'array_syntax' => ['syntax' => 'short'],
		'@PhpCsFixer' => true,
		'align_multiline_comment' => false,
		'@Symfony' => true,
	])
	->setFinder($finder)
	->setIndent("\t")
	->setLineEnding("\r\n")
;
