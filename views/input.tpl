<!DOCTYPE html>
  <head>
    <title>Lifilm</title>
    <!--<link rel="stylesheet" type="text/css" href="css/style.css">-->
    <style>
    img{
    margin:30px;
    width:200px;
    }
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
    background-color:#00BCD4;
    }
    button#b2{
    background-color:#ff9933;
    }
    button#ok{
    background-color:#FF5192;
    font-size:20px;
    height:100px;
    width:100px;
    margin:50px;
    border-radius: 50px;
    visibility:hidden;
    }
    #b1:hover, #b2:hover, #b3:hover{
    background-color: #FFD700;
    }
    #ok:hover{
    background-color: #FF0461;
    }
    #exit{
    width:80px;
    height:20px;
    font-size:10px;
    float:right;
    margin:10px;
    }
    </style>
  </head>
  <body style="text-align:center">
    <img src="http://aba-lab.com/images/common/logo.gif">
    <p>検出したものクリックしてください。</p>
    <button type="button" id="b1" onclick="Select(this, 1);" >尿</button>
    <button type="button" id="b2" onclick="Select(this, 2);" >便</button>
    <button type="button" id="b3" onclick="Select(this, 3);" >なし</button>
    <br><button type="button" id="ok" onclick="ButtonOK()">決定</button>
    <p>前回の対応：{{time}}</p>
    <br><button type="button" id="exit" onclick="Exit()">システム終了</button>
  </body>
  <script language="javascript" type="text/javascript">
    var selectedId;
    var msg;
    var ok_btn = document.getElementById("ok");

    function Select(obj, id) {
      selectedId = id;
      ok_btn.style.visibility = "visible";
      if(selectedId == 1){
        msg = "尿";
      }else if(selectedId == 2){
        msg = "便";
      }else{
        msg = "無し";
      }
    } 
    
    function ButtonOK(){
      check = confirm(" [ " + msg + " ] が選択されました。\n\n よろしいですか？");
      if ( check == true ){
          location.href=selectedId;
      }
      selectedId = 0;
      var ok_btn = document.getElementById("ok");
      ok_btn.style.visibility = "hidden";
    }
    
    function Exit(){
      check = confirm("システムを終了します。\n\n よろしいですか？");
      if ( check == true){
        location.href = "/exit";
      }
    }
  </script>
</html>
