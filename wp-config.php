<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'test_data' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '=tT)fv/1qp3f(%eRn()4zv,(ufZ-zOCi+g,7.Rt3]BFzfxF_u!@#->5=*E5lA:g=' );
define( 'SECURE_AUTH_KEY',  'bb| ,PIh#WFS2/IT~kF,G-oHE{o!?vSes_D.mKZye8aR|o!7)BFc}v^ Z@&J#aeK' );
define( 'LOGGED_IN_KEY',    '&Fhy56wd_Eq `dCF5N_~y^va{MKY+DB%@hvzJ?<-{$%Fk}c_.8(2zo>sdG`K~ tJ' );
define( 'NONCE_KEY',        'O=j~UO|/U9Lw#U-OYpHgNr9AAtWw!QP?Gr?%M/b-5^R[;24GXHd+i>w7~<L*`$2L' );
define( 'AUTH_SALT',        '66fDJXa O n/|Z^4T@N`NC@J*n*%sj*x^uYM4Rzi1,ap~Hopt_%_b)kqm,Jh,AKj' );
define( 'SECURE_AUTH_SALT', '5_sTCTqE!ElF9i]v*Aw&k&YBlWdA@X`2.it(<xz1j(Wi,kjohwc?{;j#_~)KfO}:' );
define( 'LOGGED_IN_SALT',   't:)H8D>[D(2uvCw(> pL0`&,AVf&.P(Zjm&TBKr!~M)]gN1cXEBtT:TbxE_6kCJc' );
define( 'NONCE_SALT',       'S*<9&jQ9!N}<$Fc8X95?AX*1{4H/&lt8;oxO ?p<oW;I72>85CoNf(.`qm$/C+CF' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
