<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package storefront
 */
?>

		</div><!-- .col-full -->
	</div><!-- #content -->

	<?php do_action( 'storefront_before_footer' ); ?>

	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="col-full">

			<?php
			/**
			 * @hooked storefront_footer_widgets - 10
			 * @hooked storefront_credit - 20
			 */
			do_action( 'storefront_footer' ); ?>

		</div><!-- .col-full -->
	</footer><!-- #colophon -->

	<?php do_action( 'storefront_after_footer' ); ?>

</div><!-- #page -->

<?php wp_footer(); ?>
<script src="<?php echo get_stylesheet_directory_uri(); ?>/js/stickUp.min.js"></script>
<script type="text/javascript">
  //initiating jQuery
  jQuery(function($) {
    $(document).ready( function() {
      //enabling stickUp on the '#navbar' ID
      $('#site-navigation').stickUp({
        marginTop: 620
      });
    });
        // $('.single_add_to_cart_button').html(" ");
  });

</script>

</body>
</html>
