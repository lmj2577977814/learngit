<%@ page language="java" 
    pageEncoding="utf-8"%>
    <% String path=request.getContextPath(); %>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<script src="<%=path %>/js/jquery-3.0.0.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=path %>/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=path %>/js/angular.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap.min.css"/>
		<style>
			body
			{
				background-image: url(<%=path%>/image/banner.jpg);
			}
	
		</style>
	</head>
	
	<body>
		<br /><br /><br />
		<div style="color: red">
		${message }
		</div>
		
		<h1 align="center" class="text-danger">欢迎来到注册界面</h1><br />
		<div align="center" class="row">
		<form action="<%=path %>/test/registor.html" method="post" style="width: 600px;height: 800px;" onsubmit="return check();" name="form">
			<table class="table table-bordered table-hover" align="center">
				<tr class="success">
					<td class="col-md-2 text-primary" align="center" ><b>用户名:</b></td>
					<td >
						<div class="col-md-10">
							<input type="text" name="username" class="form-control" value="${param.username }"  onblur="valid(this.value)" required="required"/>
							<div id="name" style="color: red;"></div>
						</div>
						
					</td>
					
				</tr>
				<tr class="success">
					<td class="col-md-2 text-primary" align="center"><b>密码:</b></td>
					<td align="left">
						<div class="col-md-10">
						<input type="password" name="password"  class="form-control" value="${param.password }"  required="required" onblur="valid1(this.value)">
						<div id="pwd" style="color: red;" ></div>
						</div>
					</td>
				</tr>
				<tr class="success">
					<td class="col-md-2 text-primary" align="center"><b>密码确认:</b></td>
					<td align="left">
						<div class="col-md-10">
						<input type="password" name="repassword"  class="form-control" value="${param.repassword }" required="required" onblur="repwd(this.value)" />
						<div id="repwd" style="color: red;" ></div>
						</div>
					</td>
				</tr>
				<tr class="success">
					<td  align="center" colspan="100%">
						
						<input type="submit" class="btn btn-info" value="注册"/>
						<input type="button" class="btn btn-warning" value="返回" onclick="history.go(-1)"/>
						<div align="right">
							<a href="<%=path%>/test/hello.html">返回登录界面</a>
						</div>
					</td>
					
				</tr>
				
			</table>
			
		</form>
		</div>
		<script type="text/javascript">
			function valid(v)
			{
				if(v.match(/^[a-zA-Z0-9]{6,10}$/))
				{
					document.getElementById("name").innerHTML='';
					return true;
				}
				else
				{
					document.getElementsByName("username")[0].value='';
					document.getElementById("name").innerHTML='请输入正确的用户名(6-20位的字母数字组合)';
					return false;
				}
			}
			function valid1(v)
			{
				if(v.match(/^[a-zA-Z0-9]{6,10}$/))
				{
					document.getElementById("pwd").innerHTML='';
					return true;
				}
				else
				{
					document.getElementsByName("password")[0].value='';
					document.getElementById("pwd").innerHTML='请输入正确的密码(6-20位的字母数字组合)';
					return false;
				}
			}
			function repwd(v)
			{
				if(v!=document.getElementsByName("password")[0].value)
				{
					document.getElementById("repwd").innerHTML='两次输入的密码不一致请重新输入';
					return false;
				}
				return true;
			}
			function check()
			{
				if(this.valid()==true && this.valid1()==true && this.repwd==true)
				{
					return true;
				}
				else
				{
					return false;
				}
			}
		</script>
	</body>
</html>