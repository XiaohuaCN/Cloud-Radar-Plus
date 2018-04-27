document.getElementById("menuBox").onclick=function(){slide()};

function slide(){
	var box1 = document.getElementById('navBox');
	var box2 = document.getElementById("menuBox");
	 if(box1.style.display=="none"){
            box1.style.display="block"; 
             box2.style.left="340px";
                             //显示
        }else{
            box1.style.display="none"; 
            box2.style.left='0px';                 //隐藏
       } 
	
}