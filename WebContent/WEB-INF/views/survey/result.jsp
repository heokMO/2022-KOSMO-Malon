<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="content">
    <h2> Survey Result Page</h2>
    <h3>설문 작성 완료 </h3>
    <table style="border:1px dotted;">
        <tr>
            <th>문항</th>
            <th>응답수</th>
            <th>응답비율</th>
        </tr>
		<c:forEach var="k" items="${result }">
	        <input type="hidden" name="ans" value="${k.key }">
	        <input type="hidden" name="sum_num" value="${k.value.sum_num }">
	        <tr>
	            <td style="border:1px solid;">${k.key }</td>
	            <td style="border:1px solid; text-align:center">${k.value.sum_num }</td>
	             <td style="border:1px solid;">${k.value.rate }</td>
	        </tr>
		</c:forEach>
    </table>
    <div id="chart_donut">
    	
    </div>
    <script src="https://d3js.org/d3.v3.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>	
	    $(function(){
	        let rootlistv = [];
	        for(var i =0; i < $('.ans').length; i++){
	            var ansv = $('.ans').eq(i).val();
	            var sum_numv  = $('.sum_num').eq(i).val();
	            rootlistv.push([ansv,sum_numv]);
	        }
	
	    	console.log(typeof(chartDate)
	    );
	    	
	    var chart = c3.generate({
		    bindto:'#chart_donut',
		    animationEnabled: true,
		    exportEnabled: true,
		    title:{
		        text: ""
		    }
		    data: {
		       columns: rootlistv,
		        type: 'pie',
		        onclick: function (d, i) { console.log("onclick", d, i); },
		        onmouseover: function (d, i) { console.log("onmouseover", d, i); },
	    }
	  });
	});
	</script>
</div>
