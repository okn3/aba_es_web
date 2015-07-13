<!DOCTYPE html>
  <head>
    <title>Lifilm</title>
    <!--<link rel="stylesheet" type="text/css" href="css/style.css">-->
    <style>
    button{
    width:200px;
    height:100px;
    margin:20px;
    border-style: none;
    font-size:30px;
    color:#fff; 
    -moz-border-radius: 15px;
    -webkit-border-radius: 15px;
    border-radius: 15px;
    }
    button#b1{
    background-color:#ff9933;
    }
    button#b2{
    background-color:#00BCD4;
    }
    button#ok{
    background-color:#FFE0B2;
    }
    
    </style>
  </head>
  <body style="text-align:center">
    <img src="http://aba-lab.com/images/common/logo.gif">
    <p>検出したものクリックしてください。</p>
    <button type="button" id="b1" onclick="location.href='/detect/1'">便</button>
    <button type="button" id="b2"onclick="location.href='/detect/2'">尿</button>
    <button type="button" onclick="location.href='/detect/0'">何もない</button>
    <br>
    <button type="button" id="ok" onclick="location.href='/detect/0'">決定</button>
    <br>
    
    <div style="background-color:#FFE0B2; margin:0 500px;">
    <p style="color:#fff;">{{msg}}<p>
    </div>
  </body>
</html>
