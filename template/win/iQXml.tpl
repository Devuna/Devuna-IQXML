#!region Copyright and License
#! ================================================================================
#!                                       IQXML
#! ================================================================================
#! Notice : Copyright (C) 2017, Paresi
#!          Distributed under the MIT License (https://opensource.org/licenses/MIT)
#!
#!    This file is part of Devuna-IQXML (https://github.com/Devuna/Devuna-IQXML)
#!
#!    Devuna-IQXML is free software: you can redistribute it and/or modify
#!    it under the terms of the MIT License as published by
#!    the Open Source Initiative.
#!
#!    Devuna-IQXML is distributed in the hope that it will be useful,
#!    but WITHOUT ANY WARRANTY; without even the implied warranty of
#!    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#!    MIT License for more details.
#!
#!    You should have received a copy of the MIT License
#!    along with Devuna-IQXML.  If not, see <https://opensource.org/licenses/MIT>.
#! ================================================================================
#!endRegion
#!-----------------------------------------------------------------------------------
#TEMPLATE(iQXML_Parser_Writer,'iQ-XML - Easy XML Functions for Clarion'),family('abc','cw20')
#!-----------------------------------------------------------------------------------
#INCLUDE('iQXmlPar.tpw')
#INCLUDE('iQXmlWrt.tpw')
#INCLUDE('iQXmlGrp.tpw')
#EXTENSION(iQXML_Global,'Globals for iQ-XML')
#!-----------------------------------------------------------------------------------
#SHEET
#TAB('General')
#INSERT(%iQXMLVersion)
#INSERT(%iQWelcome)
  #BOXED('')
   #DISPLAY('This template supports the following functions:')
    #BUTTON('Parser Functions')
     #INSERT(%ParserGroup)
    #ENDBUTTON
    #BUTTON('Write Functions')
     #INSERT(%writeGroup)
    #ENDBUTTON
  #ENDBOXED
  #BOXED('')
    #PROMPT('Do Not Add Library and Global Declarations',CHECK),%iQNoGlobals,at(10)
  #ENDBOXED
#ENDTAB
#TAB('Error Checking')
#PROMPT('Include Error Checking after Template Functions',CHECK),%iQIncludeError,at(10)
  #BOXED('Variable Options')
    #PROMPT('Set Error Variable as EXTERNAL',CHECK),%IQDLL,at(10)
  #ENDBOXED
  #BOXED(' Error Options '),where(%iQIncludeError=1)
   #PROMPT('Error Checking Options',OPTION),%iQErrorCheckOptions,CHOICE
   #PROMPT('Use Standard Clarion Message Box',RADIO)
   #PROMPT('Put Error Text in Global Variable',RADIO)
  #ENDBOXED
  #BOXED(' Variable '),where(%iQErrorCheckOptions=2 and %iQIncludeError=1)
   #DISPLAY('The Following Global Variable can be used to')
   #DISPLAY('display the Error Message. (glo:iQErrorMessageText)')
  #ENDBOXED
  #BOXED(' Message Option '),where(%iQErrorCheckOptions=1 and %iQIncludeError=1)
#DISPLAY(' ')
   #PROMPT('Message Text ',TEXT),%IOErrorMessageText
   #PROMPT('Message Window Title',@s40),%IOErrorMessageTitle
  #ENDBOXED
 #ENDTAB
#ENDSHEET
#AT(%GlobalData)
#IF(%iQIncludeError)
  #IF(%IQDLL)
Glo:iQErrorMessageText              STRING(128),EXTERNAL,DLL
  #ELSE
Glo:iQErrorMessageText              STRING(128)
  #ENDIF
#ENDIF
#ENDAT
#AT(%CustomGlobalDeclarations)
     #IF(%iQNoGlobals=0)
#IF(%ApplicationLocalLibrary)
   #PROJECT('REMOVE(IQXML90L.LIB)')
   #PROJECT('IQXMLL.LIB')
#ELSE
   #PROJECT('REMOVE(IQXML90.LIB)')
   #PROJECT('IQXML.LIB')
#ENDIF
    #ENDIF
#IF(%ApplicationLocalLibrary = 0)
     #FIX(%Driver,'DOS')
     #PROJECT(%DriverLIB)
#ENDIF
#ENDAT
#AT(%GlobalMap)
 #IF(%iQNoGlobals=0)
   INCLUDE('iQXML.INC','Modules')
 #ENDIF
#ENDAT
#AT(%AfterGlobalIncludes)
 #IF(%iQNoGlobals=0)
   INCLUDE('iQXML.INC','Equates')
 #ENDIF
#ENDAT
