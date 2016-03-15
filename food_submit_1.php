<html>
	<head>
		<meta charset="utf-8">
		<title>訂食吧-註冊會員</title>
	</head>
	<body>
		<center><b>
		<br>
		<br>
		<br>
			<img src="food_p\1.jpg"
			width="25%" height="25%"></image>
		<br>
		<div>
			<font size="5" color=#FF5959>
			註冊帳號
			</font>　 
			<img src="food_p\5.jpg"
			width="3%" height="5%"></image>
			<font size="5" color=#A3A3FF>
			　信箱認證
			</font>　 
			<img src="food_p\5.jpg"
			width="3%" height="5%"></image>
			<font size="5" color=#A3A3FF>
			　 註冊成功　
			</font>
		</div>　
		<br>
		<br>
		<font size="5" color=#000000>
		1.註冊帳號
		<br>
		<br>
		<form name="submit" method="post" action="food_submit_2.php">
		帳號：<input type="text" size=20 name="u_account"> 姓名：<input type="text" size=20 name="u_name">
		<br>
		<br>
		<!--密碼：<input type="text" size=20 name="u_pwd"> 確認密碼：<input type="text" size=20 name="u_pwd">-->
		密碼<input type=password name="u_pwd" value='' size=10>確認密碼<input type=password name="u_pwdchk" value='' size=10><br>
		<br>
		<br>
		信箱：<input type="text" size=20 name="u_mail">
		</form>

		
		<input type="submit" value="送出資料" onClick="return check()" >
		
		</center>
		<script language="JavaScript" type="text/JavaScript">
		<!--
		function check(){
		p1 = document.submit.u_pwd.value;
		p2 = document.submit.u_pwdchk.value;
		if ( p1 == p2 ) { 
			alert("BINGO!!!");
			location.href = "C:/Users/superuser/desktop/food_submit_2.php";		
		}
		else {
		alert("兩組密碼不一致");
		location.reload()
		}
		}
		//-->
		</SCRIPT>
	</body>
</html>


