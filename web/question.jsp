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
        	
            var i = 0;
            var stop = false;
            var answer = false;
            var time = 20;
        	function count(){
    			if(stop)
    				return true;
        		i += 1;
        		document.getElementById("showtime").innerHTML="时间过去了"+i+" s.";
        		setTimeout("count()",1000);
        	}
        	function setScore(){
        		var score = 0;
        		if(answer)
        			score = (100 / time) * (time - i);
        		document.getElementById("score").innerHTML="你在本题得到了" + score + "分！";
        	}
            function judge(){
                var rds = [];
                stop = true;
                rds[0] = document.getElementById("a");
                rds[1] = document.getElementById("b");
                rds[2] = document.getElementById("c");
                rds[3] = document.getElementById("d");
                for(var i = 0; i < 4; i++){
                    if(rds[i].checked)
                        if(i == 0){
                            document.getElementById("judge").innerHTML= "恭喜你答对了！";
                            answer = true;
                        }
                        else
                            document.getElementById("judge").innerHTML= "啊哦，好像不对~~";
                }
                setScore();
           }
        </script>
    </head>
    <body onload="count()">
        <h2>Round 2</h2>
        <p>以下城市中有“魔都”之称的是</p>
        <form>
        <input type="radio" name="radiobutton" id="a"/>上海
        <input type="radio" name="radiobutton" id="b"/>长沙
        <input type="radio" name="radiobutton" id="c"/>北京
        <input type="radio" name="radiobutton" id="d"/>广州
        </form>
        <button type="button" onclick="judge()">就决定是你了！</button>
        <div id="showtime"></div>
        <div id="judge"></div>
        <div id="score"></div>
    </body>
</html>

