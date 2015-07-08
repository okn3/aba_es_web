<!DOCTYPE html>
  <head>
    <title>Lifilm</title>
    <!--<link rel="stylesheet" type="text/css" href="css/style.css">-->
  </head>
  <body style="text-align:center">
    <img src="http://aba-lab.com/images/common/logo.gif">
    <p>種類の入力</p>
    <input type="button" onclick="location.href='/detect/1'"value="　便　" style="width:100px;margin:10px;
    ">
    <input type="button" onclick="location.href='/detect/2'"value="　尿　" style="width:100px;margin:10px">
    <input type="button" onclick="location.href='/detect/0'"value="何もない" style="width:100px;margin:10px">
    <div style="background-color:#FFE0B2; margin:0 300px;">
    <p style="color:#FF9800;">検出：{{msg}}<p>
    </div>
  </body>
</html>
