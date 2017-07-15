# IQXML #

Clarion IQXML library and templates

## Getting Started ##
A setup program, iqxml_c10.exe for IQXML is included in the repository setup folder. This program installs the iQXML library, templates, and examples.

To modify the IQXML library you will need to  

1. Copy the repository libsrc\win folder to your clarion10\accessory\libsrc\win folder
2. Copy the repository application\iqxml folder to your \apps folder


#### «« Make sure the iqxml.exp is flagged as “READ ONLY” »» ####

This is so that applications that utilize the library can compile without "duplicate symbol" errors.

If you add any NEW FUNCTIONS or experience "duplicate symbol" compiler errors, you will have to:

1. Delete the iqxml.exp
2. Compile the iqxml.app
3. Edit the EXP with notepad and delete all lines at the bottom that are ABC or CLARION related 
4. Set the EXP back to READ ONLY
5. Recompile the app a second time

This is ONLY if you ADD a new function or experience "duplicate symbol" compiler errors.  If you change an existing function - then you don’t have to do any of this.
