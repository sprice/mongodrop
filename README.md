## MongoDrop

A simple Drupal distribution that uses MongoDB.

### Installation

Install and run MongoDB.

The Drupal MongoDB module is configured in the site's `settings.php` file.
An example file with appropriate `$conf[]` values is included in this
repository.

Be sure the PHP MongoDB extension is installed on your environment.

Copy the `distro.make` file to your environment and build the code base using
[drush_make](http://drupal.org/project/drush_make).

    $ drush make distro.make --working-copy distro.make public_html

Install Drupal as usual.

### Warning

This is very experimental. Expect it to fail miserably.

### Based on Build Kit

This distribution is based on [Build Kit](http://drupal.org/project/buildkit).
