<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<fieldset>
	<legend>ȸ������</legend>
	<form action="join" method="post">
		<div id="target">
			���̵� :  <input type="text" id="mem_acc_id" name="mem_acc_id">
			<input type="button" value="�ߺ�Ȯ��" id="chkBtn"> <br>
			<span id="checkMsg"></span> <br>
			��й�ȣ : <input type="password" id="mem_pwd" name="mem_pwd"><br>
			�г��� :  <input type="text" id="mem_nick" name="mem_nick" ><br>
			�̸��� :  <input type="email" id="mem_email" name="mem_email"><br>
		</div>
		<p>
			<input type="submit" value="ȸ������ �ϱ� ">
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
		                $('#checkMsg').html('��� ������ ���̵� �Դϴ�.')
		                $('#checkMsg').css('color','blue');
		            }else{
		                $('#checkMsg').html('�̹� ������� ���̵� �Դϴ�.')
		                $('#checkMsg').css('color','red');
		                }
	    		}
	    	);
	    })
	});
</script>

