PUBLIC cnram as String


**-Define the DNS connection?
_dsn="ajcmconexion;"
_server="107.180.21.58;"
_UID="usajcmorto;"
_PWD="a123456*;"
_Database="dbajcmorto;"
_Port="3306"

**?

dsn_="DSN="+_dsn+"SERVER="+_server+"UID="+_uid+"PWD="+_pwd+"DATABASE="+_Database+"PORT="+_Port

*****?
MESSAGEBOX(cnram)
cnram=SQLSTRINGCONNECT("&dsn_") &&Se intenta la conexi�n?

IF cnram<1
    MESSAGEBOX('NO HAY CONEXI�N CON LA DB '+_Database,16,'Conexi�n Fallida!')
    RELEASE ALL
    CLOSE ALL
    **quit
ENDIF