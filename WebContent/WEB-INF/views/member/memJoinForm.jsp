<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<fieldset>
	<legend>회원가입</legend>
	<form action="join" method="post">
		<div id="target">
			아이디 :  <input type="text" id="mem_acc_id" name="mem_acc_id">
			<input type="button" value="중복확인" id="chkBtn"> <br>
			<span id="checkMsg"></span> <br>
			비밀번호 : <input type="password" id="mem_pwd" name="mem_pwd"><br>
			닉네임 :  <input type="text" id="mem_nick" name="mem_nick" ><br>
			이메일 :  <input type="email" id="mem_email" name="mem_email"><br>
		</div>
		<p>
			<input type="submit" value="회원가입 하기 ">
		</p>
	</form>
</fieldset>

<script type="text/javascript" src="resources/js/idchk.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	
	
	$(function(){
		
	    $('#chkBtn').click(function(){
	    	memberService.checkId($('#mem_acc_id').val(),
	    		function(result){
		            if(result == '0'){
		                $('#checkMsg').html('사용 가능한 아이디 입니다.')
		                $('#checkMsg').css('color','blue');
		            }else{
		                $('#checkMsg').html('이미 사용중인 아이디 입니다.')
		                $('#checkMsg').css('color','red');
		                }
	    		}
	    	);
	    })
	});
</script>

