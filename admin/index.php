<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Administration Page</title>
<link href="../css/mynul.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style3 {color: #666666}
-->
</style>
</head>

<body>
<table width="888" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="border:#999999 1px solid">
  <tr>
    <td><table width="888" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="666"><table width="100%" cellspacing="0" cellpadding="0">
          <tr>
            <td width="50%"><img src="../images/SME-LOGO.png" width="215" height="110" hspace="5" vspace="3" /></td>
            <td width="50%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table>    </td>
  </tr>
  <tr>
    <td class="mainpadding"><table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="tdAdmin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><div align="center"><a href="../">User Home</a></div></td>
          </tr>
        </table>
        <p>&nbsp;</p>
          <table width="300" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#FCFCFC" style="border:#eeeeee 1px solid">
          <tr>
            <td bgcolor="#F57E2E"><div align="right" class="style1">
              <div align="left" class="arrow"><font size="3">&nbsp;&nbsp;<span class="MenuTitle">Login Please ... </span></font></div>
            </div></td>
          </tr>
          <tr>
            <td class="mainpadding"><form id="form1" name="form1" method="post" action="Checklogin.php">
                <table width="300" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td colspan="2">&nbsp;</td>
                  </tr>
                  <tr>
                    <td colspan="2"><div align="center"><strong><font color="#FF0000" size="1" face="Verdana"><?php echo "$alert"; ?></font></strong></div></td>
                  </tr>
                  <tr>
                    <td width="112"><span class="style3">&nbsp;User Name : </span></td>
                    <td width="188"><input class="text" name="UserName" type="text" id="UserName" size="20" maxlength="10" /></td>
                  </tr>
                  <tr>
                    <td colspan="2"><img src="../images/trans.gif" alt="trans" width="10" height="5" /></td>
                  </tr>
                  <tr>
                    <td><span class="style3">&nbsp;Password :</span></td>
                    <td><input class="text" name="Password" type="password" id="Password" size="20" maxlength="10" /></td>
                  </tr>
                  <tr>
                    <td colspan="2"><img src="../images/trans.gif" alt="trans" width="10" height="7" /></td>
                  </tr>
                  <tr>
                    <td colspan="2"><img src="../images/trans.gif" alt="trans" width="10" height="5" /></td>
                  </tr>
                  <tr>
                    <td colspan="2"><div align="center">
                        <input class="button" type="submit" name="Submit" value="Sign In Now!" />
                    </div></td>
                  </tr>
                </table>
            </form></td>
          </tr>
        </table>
          <p>&nbsp;</p></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><? include('footer.php'); ?></td>
  </tr>
</table>
</body>
</html>
