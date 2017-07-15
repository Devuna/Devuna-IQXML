

                     MEMBER('GroupTest.clw')               ! This is a MEMBER module

Main                 PROCEDURE                             ! Declare Procedure
ErrQ queue
status      string(50)
message  string(200)
  end

odgovor cstring(300)
XmlErrorCode    short
  CODE                                                     ! Begin processed code
      XML:Free()
    !  odgovor &= new(Cstring(5000)) !new(Cstring(httpClient.PageLen))
      odgovor = '{{"status":"error","message":"Ovaj korisnik nema"}'
      XmlErrorCode=XML:LoadFromString(odgovor)
      xml:debugqueue(XmlErrorCode & 'here')
      XML:GotoTop()
      XmlErrorCode=Xml:loadQueue(ErrQ,True,True)
      xml:debugmyqueue(errq)
