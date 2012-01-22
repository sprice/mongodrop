; This file describes the core project requirements for BuildKit 7.x. Several
; patches against Drupal core and their associated issue numbers have been
; included here for reference.
;
; Use this file to build a full distro including Drupal core (with patches) and
; the BuildKit install profile using the following command:
;
;     $ drush make distro.make [directory]

api = 2
core = 7.x

; Drupal 7.x Jan 21 14:00 2012 -0800
projects[drupal][type] = core
projects[drupal][download][type] = git
projects[drupal][download][url] = http://git.drupal.org/project/drupal.git
projects[drupal][download][revision] = 9318096df2f22e59f993c48db932c39a15bcc41f

; Make system directories configurable to allow tests in profiles/[name]/modules to be run.
; http://drupal.org/node/911354
projects[drupal][patch][911354] = http://drupal.org/files/issues/911354.43.patch

; Use vocabulary machine name for permissions
; http://drupal.org/node/995156
projects[drupal][patch][995156] = http://drupal.org/files/issues/995156-5_portable_taxonomy_permissions.patch

; Private properties in abstract class DrupalCacheArray
; http://drupal.org/node/1371484#comment-5499626
projects[drupal][patch][137148] = http://drupal.org/files/private_properties-1371484-45.patch

projects[mongodrop][type] = profile
projects[mongodrop][download][type] = git
projects[mongodrop][download][url] = git://github.com/sprice/mongodrop.git
