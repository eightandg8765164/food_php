<!DOCTYPE html>
<html>
	<head>
		<title>訂食吧-登入畫面</title>
	</head>
	<body>
		<center><b>
		<br><br><br>
		<img src="food_p\1.jpg" width="40%" height="40%"></image>
		<form name="order" method="post" action="food_connect.php" id="myform">
			<br><font size="5" color=#D18800>
			帳號：<input type="email" size=20 name="u_account" />
			<br><br>
			密碼：<input type="password" size=20 name="u_pwd" required/>
			<br><br>
			<a href=""><img src="food_p\2.jpg" width="4.5%" onclick="formReset()"></a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="image" img src="food_p\3.jpg" width="8%" height="5%" onclick="document.order.submit()" />
			<br><br>
			<a href="http://127.0.0.1/food_submit_1.php"><img src="food_p\4.jpg"width="8%" height="6%"></a>
		</form>
			

		</center>
		<script type="text/javascript">
			function formReset(){
  				document.getElementById("myform").reset();
  			}
		</script>
	</body>
</html>