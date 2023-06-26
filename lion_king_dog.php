<?php

/**
 * Urban Oasis
 *
 * Main PHP File
 *
 * @package Urban-Oasis
 * @author Your Name <your@email.com>
 * @version 1.0.0
 */

/**
 * Constants
 */
define('ROOT_PATH', dirname(__FILE__));
define('INCLUDES_PATH', ROOT_PATH . '/includes');

/**
 * Includes
 */
require_once(INCLUDES_PATH . '/functions.php');
require_once(INCLUDES_PATH . '/hooks.php');
require_once(INCLUDES_PATH . '/shortcodes.php');
require_once(INCLUDES_PATH . '/template-helper.php');
require_once(INCLUDES_PATH . '/post-types.php');
require_once(INCLUDES_PATH . '/taxonomies.php');
require_once(INCLUDES_PATH . '/theme-support.php');

/**
 * Actions
 */
add_action('init', 'uo_setup');
add_action('after_setup_theme', 'uo_theme_support');
add_action('wp_enqueue_scripts', 'uo_assets');
add_action('admin_enqueue_scripts', 'uo_admin_assets');
add_action('init', 'uo_post_types');
add_action('init', 'uo_taxonomies');
add_action('widgets_init', 'uo_register_sidebars');
add_action('admin_menu', 'uo_admin_menu');
add_action('admin_init', 'uo_add_settings');
add_action('pre_get_posts', 'uo_pre_get_posts');
add_action('template_redirect', 'uo_page');
add_action('admin_notices', 'uo_admin_notices');

/**
 * Filters
 */
add_filter('body_class', 'uo_body_classes');
add_filter('post_class', 'uo_post_classes');
add_filter('mce_buttons', 'uo_mce_buttons');
add_filter('mce_buttons_2', 'uo_mce_buttons_2');
add_filter('the_content', 'uo_the_content');
add_filter('excerpt_more', 'uo_excerpt_more');
add_filter('image_size_names_choose', 'uo_custom_thumb_sizes');
add_filter('login_errors', 'uo_whitelist_error_messages');
add_filter('wp_nav_menu_args', 'uo_wp_nav_menu_args');
add_filter('excerpt_length', 'uo_excerpt_length');

/**
 * Shortcodes
 */
add_shortcode('uo_button', 'uo_button_shortcode');
add_shortcode('uo_slider', 'uo_slider_shortcode');
add_shortcode('uo_map', 'uo_map_shortcode');
add_shortcode('uo_form', 'uo_form_shortcode');
add_shortcode('uo_gallery', 'uo_gallery_shortcode');

/**
 * Widgets
 */
add_action('widgets_init', 'uo_register_widgets');

/**
 * Set Content Width
 */
if ( ! isset($content_width)) {
	$content_width = 640;
}

/**
 * Setup Theme
 */
function uo_setup() {

	// Load textdomain
	load_theme_textdomain('urban-oasis', ROOT_PATH . '/languages');
	
	// Add Theme Support
	add_theme_support('title-tag');
	add_theme_support('post-thumbnails');
	add_theme_support('html5', array(
		'search-form',
		'comment-form',
		'comment-list',
		'gallery',
		'caption'
	));
	
	// Register Menus
	register_nav_menus(array(
		'main_menu'    => __('Main Menu', 'urban-oasis'),
		'footer_menu'  => __('Footer Menu', 'urban-oasis')
	));

}

/**
 * Theme Assets
 */
function uo_assets() {
	
	// Stylesheets
	wp_enqueue_style('uo_style', get_stylesheet_directory_uri() . '/style.css');
	wp_enqueue_style('uo_fonts', uo_google_fonts_url(), array(), null);

	// Scripts
	wp_enqueue_script('uo_script', get_template_directory_uri() . '/assets/js/main.js');
	wp_enqueue_script('jquery');
	
}

/**
 * Admin Assets
 */
function uo_admin_assets($hook) {
	
	// Load Admin CSS on Edit Pages
	if ($hook == 'post.php' || $hook == 'post-new.php') {
		wp_enqueue_style('uo_admin_style', get_stylesheet_directory_uri() . '/admin/style.css');
	}

}

/**
 * Register Sidebars
 */
function uo_register_sidebars() {

	register_sidebar(array(
		'name'          => __('Main Sidebar', 'urban-oasis'),
		'id'            => 'main-sidebar',
		'description'   => __('Main Sidebar', 'urban-oasis'),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	));
	
	register_sidebar(array(
		'name'          => __('Footer Widgets', 'urban-oasis'),
		'id'            => 'footer-widgets',
		'description'   => __('Footer Widgets', 'urban-oasis'),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	));
	
}

/**
 * Register Widgets
 */
function uo_register_widgets() {
	// register_widget('');
}

/**
 * Admin Menu
 */
function uo_admin_menu() {

	// Add Theme Settings
	add_theme_page(__('Theme Settings', 'urban-oasis'), __('Theme Settings', 'urban-oasis'), 'manage_options', 'theme-settings', 'uo_theme_settings_page');
	
}

/**
 * End of file
 */