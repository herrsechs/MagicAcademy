<%-- 
    Document   : question
    Created on : 2015-4-6, 15:17:09
    Author     : Liu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>单人闯关</title>
        <script type="text/javascript">
        	var date1 = new Date();	
        	var time1 = date1.getTime();
                var i = 0;
        	function count(){
    
        		i += 1;
        		document.getElementById("showtime").innerHTML="时间过去了"+i+" s.";
        		setTimeout("count()",1000);
        	}
            function judge(){
                var rds = document.getElementById("radio").elements;
                for(var i = 0; i < rds.length - 1; i++){
                    if(rds[i].checked)
                        if(i == 0)
                            document.getElementById("judge").innerHTML= "恭喜你答对了！";
                        else
                            document.getElementById("judge").innerHTML= "啊哦，好像不对~~";
                }
           }
        </script>
    </head>
    <body onload="count()">
        <h2>Round 2</h2>
        <p>以下城市中有“魔都”之称的是</p>
        <form>
        <input type="radio" id="radio"/>上海
        <input type="radio" id="radio"/>长沙
        <input type="radio" id="radio"/>北京
        <input type="radio" id="radio"/>广州
        </form>
        <button type="button" onclick="judge()">就决定是你了！</button>
        <div id="showtime"></div>
        <div id="judge"></div>
    </body>
</html>
