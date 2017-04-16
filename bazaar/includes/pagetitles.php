<?php
require_once("antihack.php");
?>
								<div class="heading_big" style="margin-left:20px">
								<?php
								switch($_GET['detail'])
								{
									case '':
									case 'products':
									if(!empty($_GET['viewcat']))
									{
										$qrycat = "SELECT * FROM ".$db_prefix."categories WHERE id=".$_GET['viewcat'];
										$rescat = mysql_query($qrycat);
										$rscat = mysql_fetch_assoc($rescat);
										echo "Category: ".$rscat['cat_title'];
									}
									elseif(!empty($_GET['location']))
									{
										echo "Product Location: ".$_GET['location'];
									}
									else
										echo "New Products";
										break;
										
									case 'register':
										echo "Register for a new user account";
										break;
										
									case 'login':
										echo "User Login";
										break;
										
									case 'usercp':
										echo "User Control Panel";
										break;
										
									case 'lightbox':
										echo "Favorites";
										break;
										
									case 'cart':
										echo "Shopping Cart";
										break;
										
									case 'search':
										echo "Product Search";
										break;
										
									case 'about':
										echo "About Us";
										break;
										
									case 'catalogue':
										echo "Catalog of SHIKOR";
										break;
										
									case 'contact':
										echo "Contact Us";
										break;
										
									case 'help':
										echo "Help Contain";
										break;	
										
									default:
										echo $sitename;
										break;
										
								}
								?>
								</div>
