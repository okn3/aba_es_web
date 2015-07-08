<!DOCTYPE html>
  <head>
    <title>Lifilm</title>
    <!--<link rel="stylesheet" type="text/css" href="css/style.css">-->
  </head>
  <body style="text-align:center">
    <img src="http://aba-lab.com/images/common/logo.gif">
    <p>検出したものクリックしてください。</p>
    <button type="button" onclick="location.href='/detect/1'" 
    style="width:200px;
    height:100px;
    margin:20px;
    font-size:30px;
    background-color:#ff9933;
    border-style: none;
    color:#fff;
    -moz-border-radius: 15px;
    -webkit-border-radius: 15px;
    border-radius: 15px;
    ">便</button>
    <button type="button" onclick="location.href='/detect/2'" style="width:200px;height:100px;margin:20px;font-size:30px;border-style: none;background-color:#00BCD4;color:#fff;-moz-border-radius: 15px; -webkit-border-radius: 15px; border-radius: 15px;">尿</button>
    <button type="button" onclick="location.href='/detect/0'" style="width:200px;height:100px;margin:20px;font-size:30px;border-style: none;color:#fff;-moz-border-radius: 15px; -webkit-border-radius: 15px; border-radius: 15px;">何もない</button>
    <br>
<!--    <input type="button" onclick="location.href='/detect/1'"value="　便　" style="width:100px;margin:10px;
    ">
    <input type="button" onclick="location.href='/detect/2'"value="　尿　" style="width:100px;margin:10px">
    <input type="button" onclick="location.href='/detect/0'"value="何もない" style="width:100px;margin:10px">

    -->
    <div style="background-color:#FFE0B2; margin:0 500px;">
    <p style="color:#fff;">{{msg}}<p>
    </div>
  </body>
</html>
