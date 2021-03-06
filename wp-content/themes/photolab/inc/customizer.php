<?php
/**
 * photolab Theme Customizer
 * 
 * based on Underscores starter WordPress theme
 *
 * @package photolab
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function photolab_customize_register( $wp_customize ) {
	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';
	$wp_customize->get_setting( 'header_textcolor' )->transport = 'postMessage';
}
add_action( 'customize_register', 'photolab_customize_register' );

/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
function photolab_customize_preview_js() {
	wp_enqueue_script( 'photolab_customizer', get_template_directory_uri() . '/js/customizer.js', array( 'customize-preview' ), '20130508', true );
}
add_action( 'customize_preview_init', 'photolab_customize_preview_js' );

/**
* Front End Customizer
*
* WordPress 3.4 Required
*/
add_action( 'customize_register', 'photolab_add_customizer' );

if(!function_exists('photolab_add_customizer')) {

	function photolab_add_customizer($wp_customize) {

		/* Header slogan */
		$wp_customize->add_setting( 'photolab_header_slogan', array(
				'default'           => '',
				'type'              => 'option',
				'sanitize_callback' => 'sanitize_text_field'
		) );
		$wp_customize->add_control( 'photolab_header_slogan', array(
				'label'    => __( 'Header slogan text', 'photolab' ),
				'section'  => 'header_image',
				'settings' => 'photolab_header_slogan',
				'type'     => 'text',
				'priority' => 4
		) );

		$wp_customize->add_section( 'photolab_message', array(
			'title'    => __( 'Welcome Message', 'photolab' ),
			'priority' => 50
		));

		/* welcome label */
		$wp_customize->add_setting( 'photolab[welcome_label]', array(
				'default'           => '',
				'type'              => 'option',
				'sanitize_callback' => 'sanitize_text_field'
		) );
		$wp_customize->add_control( 'photolab_welcome_label', array(
				'label'    => __( 'Welcome message label', 'photolab' ),
				'section'  => 'photolab_message',
				'settings' => 'photolab[welcome_label]',
				'type'     => 'text',
				'priority' => 4
		) );

		/* welcome image */
		$wp_customize->add_setting( 'photolab[welcome_img]', array(
				'default'           => '',
				'type'              => 'option',
				'sanitize_callback' => 'photolab_sanitize_img'
		) );
		$wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'welcome_img', array(
			'label'    => __( 'Welcome message image', 'photolab' ),
			'section'  => 'photolab_message',
			'settings' => 'photolab[welcome_img]',
			'priority' => 5
		) ) );

		/* welcome title */
		$wp_customize->add_setting( 'photolab[welcome_title]', array(
				'default'           => '',
				'type'              => 'option',
				'sanitize_callback' => 'sanitize_text_field'
		) );
		$wp_customize->add_control( 'photolab_welcome_title', array(
				'label'    => __( 'Welcome message title', 'photolab' ),
				'section'  => 'photolab_message',
				'settings' => 'photolab[welcome_title]',
				'type'     => 'text',
				'priority' => 6
		) );

		/* welcome title */
		$wp_customize->add_setting( 'photolab[welcome_message]', array(
				'default'           => '',
				'type'              => 'option',
				'sanitize_callback' => 'sanitize_text_field'
		) );
		$wp_customize->add_control( 'photolab_welcome_message', array(
				'label'    => __( 'Welcome message text', 'photolab' ),
				'section'  => 'photolab_message',
				'settings' => 'photolab[welcome_message]',
				'type'     => 'text',
				'priority' => 7
		) );

		$wp_customize->add_section( 'photolab_misc', array(
			'title'    => __( 'Misc', 'photolab' ),
			'priority' => 200
		));

		/* featured post label */
		$wp_customize->add_setting( 'photolab[featured_label]', array(
				'default'           => __( 'Featured', 'photolab' ),
				'type'              => 'option',
				'sanitize_callback' => 'sanitize_text_field'
		) );
		$wp_customize->add_control( 'photolab_featured_label', array(
				'label'    => __( 'Featured Post Label', 'photolab' ),
				'section'  => 'photolab_misc',
				'settings' => 'photolab[featured_label]',
				'type'     => 'text',
				'priority' => 6
		) );

		/* blog posts label */
		$wp_customize->add_setting( 'photolab[blog_label]', array(
				'default'           => __( 'My Blog', 'photolab' ),
				'type'              => 'option',
				'sanitize_callback' => 'sanitize_text_field'
		) );
		$wp_customize->add_control( 'photolab_blog_label', array(
				'label'    => __( 'Blog Label', 'photolab' ),
				'section'  => 'photolab_misc',
				'settings' => 'photolab[blog_label]',
				'type'     => 'text',
				'priority' => 7
		) );

		/* blog posts label */
		$wp_customize->add_setting( 'photolab[blog_content]', array(
				'default'           => 'excerpt',
				'type'              => 'option',
				'sanitize_callback' => 'photolab_sanitize_select'
		) );
		$wp_customize->add_control( 'photolab_blog_content', array(
				'label'    => __( 'Post content on blog page', 'photolab' ),
				'section'  => 'photolab_misc',
				'settings' => 'photolab[blog_content]',
				'type'     => 'select',
				'choices'  => array(
					'excerpt' => __( 'Only Excerpt', 'photolab' ),
					'full'    => __( 'Full Content', 'photolab' )
				),
				'priority' => 8
		) );

		/* featured image */
		$wp_customize->add_setting( 'photolab[blog_image]', array(
				'default'           => 'post-thumbnail',
				'type'              => 'option',
				'sanitize_callback' => 'photolab_sanitize_select'
		) );
		$wp_customize->add_control( 'photolab_blog_image', array(
				'label'    => __( 'Featured image on blog page', 'photolab' ),
				'section'  => 'photolab_misc',
				'settings' => 'photolab[blog_image]',
				'type'     => 'select',
				'choices'  => array(
					'post-thumbnail'      => __( 'Small', 'photolab' ),
					'fullwidth-thumbnail' => __( 'Fullwidth', 'photolab' )
				),
				'priority' => 9
		) );

		/* blog read more button text */
		$wp_customize->add_setting( 'photolab[blog_btn]', array(
				'default'           => __( 'Read More', 'photolab' ),
				'type'              => 'option',
				'sanitize_callback' => 'sanitize_text_field'
		) );
		$wp_customize->add_control( 'photolab_blog_btn', array(
				'label'    => __( 'Blog "Read More" button text', 'photolab' ),
				'section'  => 'photolab_misc',
				'settings' => 'photolab[blog_btn]',
				'type'     => 'select',
				'type'     => 'text',
				'priority' => 10
		) );
	}
}


/**
 * ----------------------------------------------
 *     Add sanitize callbacks for customizer
 * ----------------------------------------------
 */


/**
 * Sanitize image input
 */
function photolab_sanitize_img( $input ) {
	return esc_url( $input );
}

/**
 * Sanitize select input
 */
function photolab_sanitize_select( $input ) {
	return esc_attr( $input );
}