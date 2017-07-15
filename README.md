# IQXML #

Clarion IQXML library and templates

## Getting Started ##

1. Move the LIB to your accessory lib
2. Move the DLL to your accessory bin
3. Move the INC to your accessory libsrc (if changed)

To start, drop these into your \apps folder…..and then find the LIB/DLL/INC for each and put them in the Accessory directory (above).

I’ve also included templates.

The iqxml.exp should stay as “READ ONLY” so that they can compile.   Rick Martin knows about this if you need additional help but they stay as Read Only.  If you add any NEW FUNCTIONS, you will have to:

1. Delete the .exp
2. Compile the app
3. Edit the EXP with notepad and delete all lines at the bottom that are ABC or CLARION related 4. Set the EXP back to READ ONLY 5. Recompile the app a second time

This is ONLY if you ADD a new function.  If you change an existing function - then you don’t have to do any of this.