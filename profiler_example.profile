<?php
// $Id$

/**
 * @file
 * An example Install profile that uses Profiler. To create your own Install 
 * profile, copy the directory that this file resides in, and rename it to the 
 * machine name of your install profile. Then do a find and replace in this file 
 * to replace all instances of profiler_example with the machine name of your 
 * profile. Edit the profiler.inc file to your taste, and presto-change-o, you've 
 * got yourself an install profile!
 */

// Don't leave this out or you'll be sorry! :)
require_once('./profiles/profiler/profiler.inc');

/**
 * Return a description of the profile for the initial installation screen. 
 * Profiler also calls this function for details about your Profiler include.
 *
 * @return
 *   An array with keys 'name' and 'description' describing this profile,
 *   and optional 'language' to override the language selection for
 *   language-specific profiles. Profiler also looks to 'path' to discover 
 *   the path of the Profiler include.
 */
function profiler_example_profile_details() {
  return array(
    'name' => 'Profiler Example',
    'description' => 'An example Install profile that uses Profiler.',
    'path' => dirname(__FILE__),
  );
}

/**
 * Return an array of the modules to be enabled when this profile is installed.
 *
 * @return
 *   An array of modules to enable.
 */
function profiler_example_profile_modules() {
  return profiler_profile_modules('profiler_example');
}

/**
 * Return a list of tasks that this profile supports.
 *
 * @return
 *   A keyed array of tasks the profile will perform during
 *   the final stage. The keys of the array will be used internally,
 *   while the values will be displayed to the user in the installer
 *   task list.
 */
function profiler_example_profile_task_list() {
  return profiler_profile_task_list('profiler_example');
}

/**
 * Perform any final installation tasks for this profile.
 *
 * @param $task
 *   The current $task of the install system. When hook_profile_tasks()
 *   is first called, this is 'profile'.
 * @param $url
 *   Complete URL to be used for a link or form action on a custom page,
 *   if providing any, to allow the user to proceed with the installation.
 *
 * @return
 *   An optional HTML string to display to the user. Only used if you
 *   modify the $task, otherwise discarded.
 */
function profiler_example_profile_tasks(&$task, $url) {
  profiler_profile_tasks($task, $url, 'profiler_example');
}