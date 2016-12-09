<?php

function debug($arr, $label = null)
{
	echo (isset($label) ? $label.' = ' : '').'<pre>'.print_r($arr, true).'</pre>';
}