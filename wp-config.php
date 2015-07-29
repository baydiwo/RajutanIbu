<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'rajutanibudb');

/** MySQL database username */
define('DB_USER', 'matakucoklat');

/** MySQL database password */
define('DB_PASSWORD', 'm4t4kuc0kl4t');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Y{M&8*9]`3$1k8-@ 7W+D_1CRiNsV|w/Yo0G`y%w;lg9(!,w],[-MNlk24Rftk|1');
define('SECURE_AUTH_KEY',  'J@^Qr=n:iHJP5--Qmtes-f-P|_N-$*gI?D]<FeeS+AlIy:(0OeL-[Lpou-o-](k|');
define('LOGGED_IN_KEY',    'j]>~5qiYa>0{Zh5LUq;v9^^I.4Z%=Vu;wZlF]Z{7w@yM:=A~|?D=6b6:eTbF9EgJ');
define('NONCE_KEY',        '?Cb|kDN}|DIB~vmK?wJG6=0}]j@4L80rc:ojriPU1^1v3_|5`Q<@|:F_C}TO|`=u');
define('AUTH_SALT',        'GU,=$qteTQ6V+LMdEh:P^2);!o+}[;G7!=7#zH9V5<lFqVKn,k1w+!D1{%HmO%|i');
define('SECURE_AUTH_SALT', 'Ex^^L{&D4HQ|;gM/5Z#DLpG&x~qRz@l+4P%#!4pzst=D&ao4d,F!p$1HW|$%i:7M');
define('LOGGED_IN_SALT',   'JjT.j],SEJW:?#k)(|UXH:GRA Cqsq$#6c+ycX1rUON0T5T2{q_!!m3UgIVLW8z`');
define('NONCE_SALT',       'cEcI{Uasg33%Dz<e-JZ:5,4Nc)90,E.4 |$#|M6^n=djEf<k~{-0B53-~yuHmaPl');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
