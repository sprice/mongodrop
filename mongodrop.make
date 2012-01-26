api = 2
core = 7.x

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
projects[mongodb][download][revision] = 616e7754d235a239d42199e064619cc5ae3be4f3

; Write a good README.txt
; http://drupal.org/node/994984#comment-5498722
projects[mongodb][patch][] = http://drupal.org/files/write_a_good_readme-994984-25.patch.txt

; module_exists() not available in session.inc
; http://drupal.org/node/1412190#comment-5498556
projects[mongodb][patch][] = http://drupal.org/files/module_exists_not_available-1412190-3.patch

; mongodb_block.module conflicts with block.module
; http://drupal.org/node/1163584#comment-5496150
projects[mongodb][patch][] = http://drupal.org/files/block_conflict-1163584-11.patch

; Notice: Undefined index: status in _drupal_session_read()
; http://drupal.org/node/1378468
; Using a gist. This solution fixes the error but allows blocked users to log in
; which isn't ideal
projects[mongodb][patch][] = https://raw.github.com/gist/1651138/2c3ff47683287bf87ccf7473696f29ada0b39b13/ignore_blocked_users.patch

; _drupal_session_read() does not load 'cache' and other properties to user object
; http://drupal.org/node/1412292#comment-5496462
; Using a gist as previous patches will conflict
projects[mongodb][patch][] = https://raw.github.com/gist/1651655/02c77af414f909450b417cc1557e6a9399834b4f/load_session_properties-1412292-too_many_patches.patch

; Drupal Crashes when writting to page cache in mongodb
; http://drupal.org/node/910726#comment-5017190
projects[mongodb][patch][] = http://drupal.org/files/issues/910726_non_utf8_strings.patch

; Fatal error: Class 'TaxonomyTermController' not found
; http://drupal.org/node/1361912#comment-5498922
projects[mongodb][patch][] = http://drupal.org/files/check_for_class-1361912-9.patch

; <> operator not implemented
; http://drupal.org/node/1328956
projects[mongodb][patch][] = http://drupal.org/files/mongo-operators.patch

; mongoDebugCollection doesn't instantiate mongoDebugCursor
; http://drupal.org/node/1116368
projects[mongodb][patch][] = http://drupal.org/files/issues/mongoDebugCursor_error.patch

; Call to undefined method MongoCollection::delete()
; http://drupal.org/node/1335326#comment-5499796
projects[mongodb][patch][] = http://drupal.org/files/no_delete_method-1335326-2.patch

projects[search_api][subdir] = contrib
projects[search_api][version] = 1.0

projects[search_api_mongodb][subdir] = contrib
projects[search_api_mongodb][type] = module
projects[search_api_mongodb][download][type] = git
projects[search_api_mongodb][download][url] = http://git.drupal.org/project/search_api_mongodb.git
projects[search_api_mongodb][download][revision] = b736ccefcd84a8db24f38828312dd2921b72a122

projects[search_api_page][subdir] = contrib
projects[search_api_page][version] = 1.0-beta2
