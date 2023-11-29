<%@ page pageEncoding="Big5"  contentType="text/html;charset=big5"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>

<style>	

body{background-color: rgb(238, 238, 238);}

a { text-decoration: none;}

font{
	font-family: ‘cwTeXYen’, sans-serif;
	line-height:1;
	font-weight:400;}
@import url(https://fonts.googleapis.com/earlyaccess/cwtexyen.css);
</style>

<script src="ua.js"></script>
<script src="ftiens4.js"></script>
<script>

USETEXTLINKS = 0 ;  //replace 0 with 1 for hyperlinks
STARTALLOPEN = 0 ; // Decide if the tree is to start all open or just showing the root folders

ICONPATH = '' //change if the gif's folder is a subfolder, for example: 'images/'

foldersTree = gFld("<b><font color=red size=4>專任教師查詢系統</font></b>", "rightframe.html")
	aux1 = insFld(foldersTree, gFld("<font color=blue size=3>資訊工程系</font>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/csie/csie_add_professor.html'		TARGET='basefrm'><font color=#8B0000 size=2>新增教師資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/csie/csie_professer_update1.jsp'		TARGET='basefrm'><font color=#8B0000 size=2>修改教師資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/csie/csie_remove_1.jsp'		TARGET='basefrm'><font color=#8B0000 size=2>刪除教師資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/csie/professor_csie_find.jsp'	TARGET='basefrm'><font color=#8B0000 size=2>查詢教師資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/csie/csie_Locate.jsp'		TARGET='basefrm'><font color=#8B0000 size=2>條件查詢教師資料</font></a>", ""))

	aux1 = insFld(foldersTree, gFld("<font color=blue size=3>資料科學與大數據系</font>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/dsa/dsa_add.html'		TARGET='basefrm'><font color=#8B5A2B size=2>新增教師資料</font></a>", ""))
        docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/dsa/dsa_professor_update1.jsp'	TARGET='basefrm'><font color=#8B5A2B size=2>修改教師資料</font></a>", ""))
        docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/dsa/dsa_remove1.jsp'	TARGET='basefrm'><font color=#8B5A2B size=2>刪除教師資料</font></a>", ""))
        docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/dsa/professor_dsa_find.jsp'			TARGET='basefrm'><font color=#8B5A2B size=2>查詢教師資料</font></a>", ""))
        docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/dsa/dsa_Locate.jsp'	TARGET='basefrm'><font color=#8B5A2B size=2>條件查詢教師資料</font></a>", ""))
    
    aux1 = insFld(foldersTree, gFld("<font color=blue size=3>智慧網路科技系</font>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/int/int_add.html'			TARGET='basefrm'><font color=#339900 size=2>新增教師資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/int/int_professor_update1.jsp'			TARGET='basefrm'><font color=#339900 size=2>修改教師資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/int/int_remove_1.jsp'			TARGET='basefrm'><font color=#339900 size=2>刪除教師資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/int/professor_int_find.jsp'					TARGET='basefrm'><font color=#339900 size=2>查詢教師資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/int/int_Locate.jsp'		TARGET='basefrm'><font color=#339900 size=2>條件查詢教師資料</font></a>", ""))
	
	aux1 = insFld(foldersTree, gFld("<font color=blue size=3>資訊管理系</font>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/im/im_add.html'	TARGET='basefrm'><font color=#8B0000 size=2>新增教師資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/im/im_professor_update1.jsp'	TARGET='basefrm'><font color=#8B0000 size=2>修改教師資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/im/im_remove1.jsp'	TARGET='basefrm'><font color=#8B0000 size=2>刪除教師資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/im/professor_im_find.jsp'			TARGET='basefrm'><font color=#8B0000 size=2>查詢教師資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/im/im_Locate.jsp'	TARGET='basefrm'><font color=#8B0000 size=2>條件查詢教師資料</font></a>", ""))
		
		aux1 = insFld(foldersTree, gFld("<font color=blue size=3>系助維護</font>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/da/DA.html'	TARGET='basefrm'><font color=#556B2F size=2>新增系助資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/da/DA_update1.jsp'	TARGET='basefrm'><font color=#556B2F size=2>修改系助資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/da/DA_remove_1.jsp'	TARGET='basefrm'><font color=#556B2F size=2>刪除系助資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/da/DA_Find.jsp'	TARGET='basefrm'><font color=#556B2F size=2>查詢系助資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/da/DA_Locate.jsp'	TARGET='basefrm'><font color=#556B2F size=2>條件查詢系助資料</font></a>", ""))
		
		
		aux1 = insFld(foldersTree, gFld("<font color=blue size=3>其他功能</font>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/find_all.jsp'	TARGET='basefrm'><font color=#556B2F size=2>查詢所有教授資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/depr/professor_csie_find.jsp'	TARGET='basefrm'><font color=#556B2F size=2>查詢所有學系資料</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/depr/depr_update1.jsp'	TARGET='basefrm'><font color=#556B2F size=2>學系更名</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/expertise/csie_add_professor.html'	TARGET='basefrm'><font color=#556B2F size=2>新增專長</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/expertise/csie_professer_update1.jsp'	TARGET='basefrm'><font color=#556B2F size=2>修改專長</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/expertise/csie_remove_1.jsp'	TARGET='basefrm'><font color=#556B2F size=2>刪除專長</font></a>", ""))
		docAux = insDoc(aux1, gLnk("R", "<a href='http://localhost:8080/demo2/資料庫期末/110-1_Orders/WebContent/home/expertise/professor_csie_find.jsp'	TARGET='basefrm'><font color=#556B2F size=2>查詢專長</font></a>", ""))
		

</script>
</head>

<body background-color:#EEEEEE>
</br>
<div style="position:absolute; top:0; left:0; ">
	<table>
		<tr>
			<td>
				<font size=-2>
					<a style="font-size:7pt;text-decoration:none;color:silver" href="http://www.treemenu.net/" target=_blank>
					</a>
				</font>
			</td>
		</tr>
	</table>
</div>

<script>initializeDocument()</script>
</br>
<noscript>
A tree for site navigation will open here if you enable JavaScript in your browser.
</noscript>

<script LANGUAGE="JavaScript" TYPE="text/javascript">
var vn="Microsoft Internet Explorer";
var some;
if(navigator.appName!=vn)
some=1900;
else
some=0;
function montharr(m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11)
{
this[0] = m0;
this[1] = m1;
this[2] = m2;
this[3] = m3;
this[4] = m4;
this[5] = m5;
this[6] = m6;
this[7] = m7;
this[8] = m8;
this[9] = m9;
this[10] = m10;
this[11] = m11;
}
function calendar()
{
var monthNames = "JanFebMarAprMayJunJulAugSepOctNovDec";
var today = new Date();
var thisDay;
var monthDays = new montharr(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
year = today.getYear();
thisDay = today.getDate();
if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) monthDays[1] = 29;
nDays = monthDays[today.getMonth()];
firstDay = today;
firstDay.setDate(1); // works fine for most systems
testMe = firstDay.getDate();
if (testMe == 2) firstDay.setDate(0);
startDay = firstDay.getDay();
document.write('<table border="0" cellspacing="0" cellpadding="2" align="CENTER" bgcolor="#0080FF"><TR><TD><table width="100%" border="0" cellspacing="1" cellpadding="2" bgcolor="Silver">');
document.write('<TR><th colspan="7" bgcolor="#C8E3FF">');
var dayNames = new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
var monthNames = new Array("1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月");
var now = new Date();
document.write("<font style=font-size:9pt;Color:#330099>" , "西元" , " " , now.getYear() + some , "年" , " " , monthNames[now.getMonth()] , " " , now.getDate() , "日" , " " , dayNames[now.getDay()] , "</FONT>");
document.writeln('</TH></TR><TR><TH BGCOLOR="#0080FF"><font style="font-size:9pt;Color:White">日</FONT></TH>');
document.writeln('<th bgcolor="#0080FF"><font style="font-size:9pt;Color:White">一</FONT></TH>');
document.writeln('<TH BGCOLOR="#0080FF"><font style="font-size:9pt;Color:White">二</FONT></TH>');
document.writeln('<TH BGCOLOR="#0080FF"><font style="font-size:9pt;Color:White">三</FONT></TH>');
document.writeln('<TH BGCOLOR="#0080FF"><font style="font-size:9pt;Color:White">四</FONT></TH>');
document.writeln('<TH BGCOLOR="#0080FF"><font style="font-size:9pt;Color:White">五</FONT></TH>');
document.writeln('<TH BGCOLOR="#0080FF"><font style="font-size:9pt;Color:White">六</FONT></TH>');
document.writeln("</TR><TR>");
column = 0;
for (i=0; i<startDay; i++)
{
document.writeln("\n<TD><FONT style=font-size:9pt> </FONT></TD>");
column++;
}
for (i=1; i<=nDays; i++)
{
if (i == thisDay)
{
document.writeln('</TD><td align="CENTER" bgcolor="#FF8040"><FONT style=font-size:9pt;Color:#ffffff><B>')
}
else
{
document.writeln('</TD><TD BGCOLOR="#FFFFFF" ALIGN="CENTER"><FONT style=font-size:9pt;font-family:Arial;font-weight:bold;Color:#330066>');
}
document.writeln(i);
if (i == thisDay) document.writeln("</FONT></TD>")
column++;
if (column == 7)
{
document.writeln("<TR>"); 
column = 0;
}
}
document.writeln('<TR><td colspan="7" align="CENTER" valign="TOP" bgcolor="#0080FF"><form name="clock" onSubmit="0"><FONT style=font-size:9pt;Color:#ffffff>現在時間：</FONT><INPUT TYPE="Text" NAME="face" ALIGN="TOP"></TD></TR></TABLE></TD></TR></TABLE></FORM>');
}
var timerID = null;
var timerRunning = false;
function stopclock ()
{
if(timerRunning)
clearTimeout(timerID);
timerRunning = false;
}
function showtime()
{
var now = new Date()
var hours = now.getHours()
var minutes = now.getMinutes()
var seconds = now.getSeconds()
var timeValue = ""
if(hours>=1 && hours <4)
{timeValue += ("凌晨")}
if(hours>=4 && hours<6)
{timeValue += ("清晨")}
if(hours>=6 && hours<9)
{timeValue += ("早上")}
if(hours>=9 && hours<12)
{timeValue += ("上午")}
if(hours>=12 && hours<13)
{timeValue += ("中午")}
if(hours>=13 && hours<18)
{timeValue += ("下午")}
if(hours>=18 && hours <19)
{timeValue += ("傍晚")}
if(hours>=19 && hours <24)
{timeValue += ("晚上")}
if(hours<1)
{timeValue += ("午夜")}
timeValue += ((hours > 12) ? hours - 12 : hours)
timeValue += ((minutes < 10) ? ":0" : ":") + minutes
timeValue += ((seconds < 10) ? ":0" : ":") + seconds
document.clock.face.value = timeValue
timerID = setTimeout("showtime()",1000)
timerRunning = true
}
function startclock ()
{
stopclock();
showtime();
}
</script>
<script LANGUAGE="JavaScript" TYPE="text/javascript">
<!--
calendar();
//-->
</script>
<BODY onLoad="startclock(); timerONE=window.setTimeout"> 
</html>
