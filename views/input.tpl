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
    background-color:#FF367F;
    font-size:20px;
    height:80px;
    width:80px;
    margin:50px;
    border-radius: 40px;
    visibility:hidden;
    }
    #b1:hover, #b2:hover, #b3:hover{
    background-color: #FFD700;
    }
    
    </style>
  </head>
  <body style="text-align:center">
    <img src="http://aba-lab.com/images/common/logo.gif">
    <p>検出したものクリックしてください。</p>
    <button type="button" id="b1" onclick="Select(this, 1);" >尿</button>
    <button type="button" id="b2" onclick="Select(this, 2);" >便</button>
    <button type="button" id="b3" onclick="Select(this, 3);" >なし</button>
    <br>
    <button type="button" id="ok" onclick="ButtonOK()">OK</button>
    <div id="msg"  style="background-color:#FFE0B2; margin:0 500px;">
      <p style="color:#fff;">{{msg}}<p>
    </div>
  </body>
  <script language="javascript" type="text/javascript">
    var selectedId; 
    var ok_btn = document.getElementById("ok");
    var nyo_btn = document.getElementById("b1");
    var ben_btn = document.getElementById("b2");
    var non_btn = document.getElementById("b3");
    function Select(obj, id) {
//      obj.style.backgroundColor = "#FFD700";
      selectedId = id;
      ok_btn.style.visibility = "visible";
    } 
    
    function ButtonOK(){
      alert(selectedId);
      location.href="detect/"+selectedId; //test
      selectedId = 0;
      var ok_btn = document.getElementById("ok");
      ok_btn.style.visibility = "hidden";
    }
  </script>
</html>
