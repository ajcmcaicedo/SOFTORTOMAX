*				SET TALK OFF
*				SET STATUS OFF
*				ON SHUTDOWN quit
*				**_screen.WindowState=0
*				_screen.Caption="AGROPECUARIOS - COLACTEOS"

Public xcon,ycon,conexion,xservidor,xdb,bandera
bandera=.t.

    *database = mysql.connector.connect(
    *host='23.145.120.75',
    *user='ortomaxc_admin',
    *password='FIe#iN[_d[#I',
    *database='ortomaxc_ajcmdb'*
*
*


*SET CENTURY ON 
				&& Conecta a la base de datos
				&&xdb=ALLTRIM(thisform.frame.p1.txtdb.value)
				&&xdb="COLACTEOS"
***xdb="dbajcmorto"
***xservidor="107.180.21.58"

*xdb="ortomaxc_ajcmdb"
*xservidor="23.145.120.75"

*cadenaconexion = "DRIVER={MySQL ODBC 8.0 UNICODE Driver;"+"UID=;"+"PWD=;"+"SERVER="+xservidor+";"+"DATABASE="+xdb
***cadenaconexion = "DRIVER={MySQL ODBC 8.0 Unicode Driver};"+"UID=usajcmorto;"+"PWD=a123456*;"+"SERVER="+xservidor+";"+"DATABASE="+xdb
*cadenaconexion = "DRIVER={SQL server};"+"UID=ortomaxc_admin;"+"PWD==khcik$jumlM*&$;"+"SERVER="+xservidor+";"+"DATABASE="+xdb


cadenaconexion ="Driver={MySQL ODBC 8.0 ANSI Driver};"+"SERVER=23.145.120.75;"+"DATABASE=ortomaxc_ajcmdb;"+"UID=ortomaxc_admin;"+"PASSWORD=&{I?BQaClw[h;"+"OPTION=3;"+"port=3306;"
conexion= Sqlstringconnect(cadenaconexion) 
*AERROR(xerror)
**MESSAGEBOX (cadenaconexion )
**MESSAGEBOX (xerror)


				***xdb="COLACTEOS_copia"
				&&xservidor=ALLTRIM(thisform.frame.p1.txtservidor.value)
				&&xservidor="ofi-auxsis1"
				&&xservidor="COLPAZDB"
                **xservidor="LOCALHOST"
				&&xpasswd=ALLTRIM(thisform.frame.p1.Txtpasswd.value)

				**base = "COLACTEOS"
				**cAppConnectString = "DRIVER={SQL server};UID=;PWD=;SERVER=AJCM\SQLEXPRESS;DATABASE="+cDns
				**cadenaconexion = "DRIVER={SQL server};"+"UID=;"+"PWD=;"+"SERVER="+xservidor+";"+"DATABASE="+xdb
				**conexion= Sqlstringconnect(cadenaconexion) 
				**MESSAGEBOX (xservidor)
				
				**---CONEXION POSTGRESQL ----
				**cadenaconexion = "Driver={PostgreSQL UNICODE};Server=localhost;Port=5432;Database=ajcm;Uid=postgres;Pwd=a123456*;"
				**conexion= Sqlstringconnect(cadenaconexion) 


**Driver={PostgreSQL UNICODE};Server=localhost;Port=5432;Database=ajcm;Uid=Postgre;Pwd=a123456*;


**-*------------------------CONEXION MYSQL -----------------------




if conexion <=0
messagebox('ESTE USUARIO NO TIENE CONEXION A LA BASE DE DATOS .',64,'AVISO')
return .f.
ELSE
	&&messagebox('SE HA CONECTADO A LA BASE DE DATOS',64,'AVISO')
	WAIT 'CONECTANDO CON LA BASE ...'WINDOW  TIMEOUT 1
 
ENDIF
SQLDISCONNECT(conexion)

	set sysmenu to default
	Local oldScreenLeft
	Local oldScreenTop
	Local oldScreenHeight
	Local oldScreenWidth
	Local oldScreenColor
	WITH _Screen
       oldScreenLeft=.Left                 && Guardar el tama�o y la posici�n actuales
	   oldScreenTop=.Top
	   oldScreenHeight=.Height
	   oldScreenWidth=.Width
	   oldScreenColor = .Backcolor
		*.LockScreen=.T.                     && Desactiva el redibujado de pantalla
		.BackColor=rgb(192,192,192)         && Cambiar el color de fondo a gris
		.BorderStyle=2                     && Cambiar el borde a doble
		.Closable=.T.                       && Quitar botones de control de ventana
		.ControlBox=.F.
		.MaxButton=.T.
		.MinButton=.T.
		.Movable=.T.
		.Height=600		
		.Width=1250
		.Caption="Ortomax - Guayaquil.                                                                                                                                                                        Alberto Caicedo"            && Establecer un t�tulo
		.LockScreen=.F.     
		**.Left = oldScreenLeft               && Restablecer el tama�o
        .AutoCenter=.T.
        **.Top = 200                 && y posici�n original
        **.SCREEN = OFF
ENDWITH
SET SYSMENU OFF

**=MESSAGEBOX("Return to normal  ",48,WTITLE())
DO menu1.mpr
READ events


