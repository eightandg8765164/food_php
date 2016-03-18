<html>
	<head>
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
		
			<font size="5" color=#A3A3FF>
			註冊帳號　 
			<img src="food_p\5.jpg"
			width="3%" height="5%"></image>
			<font size="5" color=#A3A3FF>
			<font size="5" color=#FF5959>
			　信箱認證　 
			<img src="food_p\5.jpg"
			width="3%" height="5%"></image>
			<font size="5" color=#A3A3FF>
			　 註冊成功　　
		<br>
		<br>
			<font size="5" color=#000000>
			2.信箱認證
		<br>
		<br>
			謝謝您！資料已送出，請至信箱收取認證信件已完成註冊。
		
		<?php
			echo $u_mail=$_POST["u_mail"];
			echo $u_pwd=$_POST["u_pwd"];
			echo $u_name=$_POST["u_name"];
			echo $_POST["u_phone"];
			//@mysql_connect("127.0.0.1","mike","Mike561209") ;	
			//mysql_select_db("ordering_sys");
			//mysql_query("INSERT INTO user(u_mail,u_pwd,u_name,u_phone,u_isroot) VALUES ('$u_mail','$u_pwd','$u_name','$u_phone','0')");
		?>		
	</center>
	</body>
</html>