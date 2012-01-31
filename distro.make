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

; Drupal 7.x Jan 31 2012 10:52 +0000
projects[drupal][type] = core
projects[drupal][download][type] = get
projects[drupal][download][url] = http://drupalcode.org/project/drupal.git/snapshot/d0dc85e5556b47966fe7f541826be8962d3121a9.tar.gz

; Make system directories configurable to allow tests in profiles/[name]/modules to be run.
; http://drupal.org/node/911354
projects[drupal][patch][911354] = http://drupal.org/files/issues/911354.43.patch

; Use vocabulary machine name for permissions
; http://drupal.org/node/995156
projects[drupal][patch][995156] = http://drupal.org/files/issues/995156-5_portable_taxonomy_permissions.patch

projects[mongodrop][type] = profile
projects[mongodrop][download][type] = git
projects[mongodrop][download][url] = git://github.com/sprice/mongodrop.git
