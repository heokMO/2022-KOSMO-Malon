<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<link rel="stylesheet" href="/resources/css/new_main.css">
</head>
<body>
	<div id="logo">
		<a href="/"><img src="/resources/images/MALON_logo.png" id=logo_img></a>
	</div>

	<div id="wrapper">
			<form id="joinfrm" method="post">
				<div id="content">					
						<div>
							<h3 class="join_title">
								<label for="mem_acc_id">���̵�</label>
							</h3>
							<div class="id_box">
								<span class="box int_id">
				                	<input type="text" name="mem_acc_id" id="mem_acc_id" class="int" maxlength="20" placeholder="���̵� �Է����ּ���.">
				                </span>
				                	<input type="button" value="�ߺ�Ȯ��" id="chkBtn">
				                 <br>
			                </div>
			                <span class="error_next_box" id="checkMsg"></span>
						</div>
			
			            <div>
			                <h3 class="join_title"><label for="mem_pwd">��й�ȣ</label></h3>
			                <span class="box int_pass">
			                    <input type="password" name="mem_pwd" id="mem_pwd" class="int" maxlength="20" placeholder="��й�ȣ�� �Է����ּ���.">
			                    <span id="alertTxt">���Ұ�</span>
			                    <img src="/resources/images/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
			                </span>
			                <span class="error_next_box" id="checkMsg"></span>
			            </div>
			
			            <div>
			                <h3 class="join_title"><label for="mem_pwd2">��й�ȣ ��Ȯ��</label></h3>
			                <span class="box int_pass_check">
			                    <input type="password" id="mem_pwd2" class="int" maxlength="20" placeholder="��й�ȣ�� �ٽ� �� �� �Է����ּ���.">
			                    <img src="/resources/images/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
			                </span>
			                <span class="error_next_box" id="checkMsg"></span>
			            </div>
			
			            <div>
			                <h3 class="join_title"><label for="mem_nick">�г���</label></h3>
			                <span class="box int_name">
			                    <input type="text" name="mem_nick" id="mem_nick" class="int" maxlength="20" placeholder="�г����� �Է����ּ���.">
			                </span>
			                <span class="error_next_box"></span>
			            </div>
			
			            <div>
			                <h3 class="join_title"><label for="mem_email">����Ȯ�� �̸���</label></h3>
			                <span class="box int_email">
			                    <input type="email" name="mem_email" id="mem_email" class="int" maxlength="100" placeholder="�̸����� �Է����ּ���.">
			                </span>
			                <span class="error_next_box">�̸��� �ּҸ� �ٽ� Ȯ�����ּ���.</span>
			            </div>
			
			            <div class="btn_area">
				            <button type="submit" id="btnJoin">
				                <span>ȸ������</span>
				            </button>
			            </div>
		      </div>
			</form>
	</div>
	
	<div id="footer">
		Copyright MALON Corp. All Rights Reserved.
	</div>
	
</body>


<script type="text/javascript" src="/resources/js/idchk.js" charset="UTF-8"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	document.addEventListener("DOMContentLoaded", function(){
		okId = false;
		idcheck = false;
		okPwd = false;
		confirmPwd = false;
		oknick = false;
		okemail = false;
		joinPermission = false;
		
	    $('#chkBtn').click(function(){
	    	memberService.checkId($('#mem_acc_id').val(),
	    		function(result){
	    			if(okId == true){
			            if(result == '0'){
			                $('#checkMsg').html('��� ������ ���̵� �Դϴ�.');
			                $('#checkMsg').css('color','blue');
			                idcheck = true;
			            }else{
			                $('#checkMsg').html('�̹� ������� ���̵� �Դϴ�.');
			                $('#checkMsg').css('color','red');
			            }	    				
	    			}
	    		}
	    	);
	    })
	    
	    $('#btnJoin').click(function(e){
	    	e.stopPropagation();
	
	    	var joinPermission = joinOk();
	    	if (joinPermission){
	    		$('#joinfrm').attr("action","/member/join");
	    		$('#joinfrm').submit();
	    	}
	    	
	    })
	
	});
</script>

</html>

