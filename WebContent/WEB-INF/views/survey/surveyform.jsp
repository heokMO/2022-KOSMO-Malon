<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<fieldset style="width:400px;margin:auto;">
	<form method="post" action="submit">
	    <legend>${survey.question }</legend>
	    <p>
	    <label for="num1">${survey.ans1 }</label>
	    <input type="radio" name="num" id="num1" value="1">
	    </p>
	
	    <p>
	        <label for="num2">${survey.ans2 }</label>
	        <input type="radio" name="num" id="num2" value="2">
	    </p>
	
	    <p>
	        <label for="num3">${survey.ans3 }</label>
	        <input type="radio" name="num" id="num3" value="3">
	    </p>	
	    <p>
	        <label for="num4">${survey.ans4 }</label>
	        <input type="radio" name="num" id="num4" value="4">
	    </p>
	
	    <p style="text-align:right">
	        <input type="hidden" name="survey_idx" value="${survey.survey_idx }">
	        <input type="submit" value="ÅõÇ¥">
	    </p>
     </form>
</fieldset>