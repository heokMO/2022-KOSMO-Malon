<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<fieldset>
	<legend>회원가입</legend>
	<form action="join" method="post">
		<div id="target">
			아이디 :  <input type="text" name="mem_acc_id"><br>
			비밀번호 : <input type="password" name="mem_pwd"><br>
			닉네임 :  <input type="text" name="mem_nick" ><br>
			이메일 :  <input type="email" name="mem_email"><br>
		</div>
		<p>
			<input type="submit" value="회원가입 하기 ">
		</p>
	</form>
</fieldset>