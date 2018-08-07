<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
	<title>用户注册</title>
	<script type="text/javascript">
	function get_syn() {
		var xhr=new XMLHttpRequest();//创建AJAX操作对象（get,post）
		xhr.open("GET", "uname.action?uname="+document.getElementById("uname").value, false);//请求提交的方式(get|post),请求提交的页面(url),请求提交的处理方式(true异步处理,false同步处理)，
		xhr.setRequestHeader("cache-control", "no-cache");//设置请求的参数meta
		xhr.setRequestHeader("Content-Type", "text/html;charset=utf-8");//设置请求的参数meta
		xhr.send(null);//AJAX发送请求(同步,中断)
		var result=xhr.status;//获取AJAX请求的执行结果(Http的错误编号)
		if (result==200) { //服务端执行成功
		    alert(xhr.responseText);//xhr.responseText获取服务端返回的内容
		} else { //服务端执行失败
		   alert(result);
		}
	}
	function get_syn_no() {
		var xhr=new XMLHttpRequest();//创建AJAX操作对象（get,post）
		xhr.open("GET", "uname.action?uname="+document.getElementById("uname").value, true);//请求提交的方式(get|post),请求提交的页面(url),请求提交的处理方式(true异步处理,false同步处理)，
		xhr.setRequestHeader("cache-control", "no-cache");//设置请求的参数meta
		xhr.setRequestHeader("Content-Type", "text/html;charset=utf-8");//设置请求的参数meta
		xhr.onreadystatechange=function() { //当服务器端处理请求的过程中,自动调用该函数.
		    if (xhr.readyState==4) { //判断请求处理是否结束
			    var result=xhr.status;//获取AJAX请求的执行结果(Http的错误编号)
				if (result==200) { //服务端执行成功
				    alert(xhr.responseText);//xhr.responseText获取服务端返回的内容
				} else { //服务端执行失败
				   alert(result);
				}
		    }
		};
		xhr.send(null);//AJAX发送请求(同步,中断)
	}

	function post_syn(){
   	var xhr=new XMLHttpRequest();
   	xhr.open("POST", "uname.action", false);
	xhr.setRequestHeader("cache-control", "no-cache");
	xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	xhr.send("uname="+document.getElementById("uname").value);
	var result=xhr.status;
	if(result==200){
   	    alert(xhr.responseText);
    }else{
        alert(result);
   }
   
}
	</script>
</head>
<body>
    <form id="form" action="login.action" method="post">
        <span>用户名称:</span><input id="uname" name="uname" type="text" onblur="post_syn();"/><br/>
        <span>用户密码:</span><input id="uword" name="uword" type="text"/><br/>
        <span>确认密码:</span><input id="rword" name="rword" type="text"/><br/>
        <input id="enter_submit" type="submit" value=" 注 册 "/> <input type="button" value=" 返 回 " onclick="location.href='login.jsp';"/>
    </form>
</body>
</html>
