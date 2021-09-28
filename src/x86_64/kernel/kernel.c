/* Kernel.
 * (C) 2001, 2002, 2003, 2004 Rusty Russell
 *
 * This code is licenced under the GPL.
 */

/*
 * The following two APIs (cpu_maps_update_begin/done) must be used when
 * attempting to serialize the updates to cpu_online_mask & cpu_present_mask.
 */
void start_kernel() {
  clear();
  start_bash();
}

