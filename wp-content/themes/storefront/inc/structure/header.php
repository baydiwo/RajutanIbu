<?php
/**
 * Template functions used for the site header.
 *
 * @package storefront
 */

if ( ! function_exists( 'storefront_header_widget_region' ) ) {
	/**
	 * Display header widget region
	 * @since  1.0.0
	 */
	function storefront_header_widget_region() {
		?>
		<!-- <div class="header-widget-region">
			<div class="col-full">
				<?php dynamic_sidebar( 'header-1' ); ?>
			</div>
		</div> -->
		<?php
	}
}

if ( ! function_exists( 'storefront_site_branding' ) ) {
	/**
	 * Display Site Branding
	 * @since  1.0.0
	 * @return void
	 */
	function storefront_site_branding() {
		if ( function_exists( 'jetpack_has_site_logo' ) && jetpack_has_site_logo() ) {
			jetpack_the_site_logo();
		} else { ?>
			<div class="site-branding  <?php if(is_home() || is_front_page()) echo 'homepage'; ?>">
				<h1 class="site-title" style="display:none;"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></h1>
				<p class="site-description" style="display:none;"><?php bloginfo( 'description' ); ?></p>
				<img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" alt="">
			</div>
		<?php }
	}
}

if ( ! function_exists( 'storefront_primary_navigation' ) ) {
	/**
	 * Display Primary Navigation
	 * @since  1.0.0
	 * @return void
	 */
	function storefront_primary_navigation() {
		?>
		<nav id="site-navigation" class="main-navigation" role="navigation">
			<div class="menu-wrapper">
			<button class="menu-toggle"><?php echo esc_attr( apply_filters( 'storefront_menu_toggle_text', __( 'Primary Menu', 'storefront' ) ) ); ?></button>
			<div class="logo"><img src="<?php echo get_template_directory_uri(); ?>/images/rajutan_ibu_small.png"></div>
				<?php wp_nav_menu( array( 'theme_location' => 'primary' ) ); ?>
			</div>
		</nav><!-- #site-navigation -->
		<?php
	}
}

if ( ! function_exists( 'storefront_secondary_navigation' ) ) {
	/**
	 * Display Secondary Navigation
	 * @since  1.0.0
	 * @return void
	 */
	function storefront_secondary_navigation() {
		?>
		<nav class="secondary-navigation" role="navigation">
			<?php wp_nav_menu( array( 'theme_location' => 'secondary', 'fallback_cb' => '' ) ); ?>
		</nav><!-- #site-navigation -->
		<?php
	}
}