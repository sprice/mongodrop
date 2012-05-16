api = 2
core = 7.12

; Build Kit drupal-org.make (Jan. 5, 2012)

includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/dce10d60e3af75b8d18e7b461e615d6fa63086ec:/drupal-org.make

; Build Kit Overrides

projects[tao][subdir] = contrib
projects[rubik][subdir] = contrib

; node_diff() only diffs modified existing values, ignores newly added or removed ones
; http://drupal.org/node/1224996#comment-4764254
projects[diff][patch][] = http://drupal.org/files/issues/1224996-removed-values-preview-changes.patch

; Taxonomy diff
; http://drupal.org/node/248778#comment-4764344
projects[diff][patch][] = http://drupal.org/files/issues/248778-taxo-noderef-support.9.patch

; Contrib

projects[entity][subdir] = contrib
projects[entity][version] = 1.0-rc1

projects[mongodb][subdir] = contrib
projects[mongodb][type] = module
projects[mongodb][download][type] = git
projects[mongodb][download][url] = http://git.drupal.org/project/mongodb.git
projects[mongodb][download][revision] = 33fd58f416d56cc1b66edf9f65452c0acc511bda

; module_exists() not available in session.inc
; http://drupal.org/node/1412190#comment-5498556
projects[mongodb][patch][] = http://drupal.org/files/module_exists_not_available-1412190-3.patch

; mongodb_block.module conflicts with block.module
; http://drupal.org/node/1163584#comment-5496150
projects[mongodb][patch][] = http://drupal.org/files/block_conflict-1163584-11.patch

; _drupal_session_read() does not load 'cache' and other properties to user object
; http://drupal.org/node/1412292#comment-5496462
projects[mongodb][patch][] = http://drupal.org/files/load_session_properties-1412292-1.patch

projects[search_api][subdir] = contrib
projects[search_api][version] = 1.0

projects[search_api_mongodb][subdir] = contrib
projects[search_api_mongodb][type] = module
projects[search_api_mongodb][download][type] = git
projects[search_api_mongodb][download][url] = http://git.drupal.org/project/search_api_mongodb.git
projects[search_api_mongodb][download][revision] = b736ccefcd84a8db24f38828312dd2921b72a122

projects[search_api_page][subdir] = contrib
projects[search_api_page][version] = 1.0-beta2
