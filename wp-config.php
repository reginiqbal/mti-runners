<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'mti-runners');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         '@kQd`D1@ER->@JU76_y{}_Qg? ?J[=lMly<Ni~PcXlP!D5rB2iSg&d92dR:<oa<L');
define('SECURE_AUTH_KEY',  'uYJsNrf03UKpn0FUtjNulM >{z|9+_oP7+8) vbU?3[41sx##Vq)B<ejt^e1g?XV');
define('LOGGED_IN_KEY',    ']5phrf,]HB0!mp5`F]tbyQS^6ODP,U3oz*B)RI2OAB0a*AwL0fhQWBL)^593(D+-');
define('NONCE_KEY',        'Ehi-(k.s:1#zQh_{+u(ya[Oy<Y e^THmI:7uoM`u}[60*7J8{X5%FOgF/A:UF@EK');
define('AUTH_SALT',        'mv:m-}b*|_%ucK,?JwsN}&;CW#h^*y|GX`Rs] .3(rXNL35Ni`i!=s)^62ayrcpD');
define('SECURE_AUTH_SALT', 'Go:`^H96Z0mf80:v2U>?YxD9OV&<S1Mf6g#c#E-_]&@bUGJ`vvK0z{*~68o9UUzA');
define('LOGGED_IN_SALT',   'dj_^C-wdC#tTPM}k2!CS|}}SDFYp+sR5tf:EgUH=wf<l`ztph)>.]J/cpN?2.0Wy');
define('NONCE_SALT',       '`-Th~k^YImO7$4.Gd`86f.@z4b9(.7E?wXv(iVfCzxmNJ}6Jd_4bp$k BK|F[<R!');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
