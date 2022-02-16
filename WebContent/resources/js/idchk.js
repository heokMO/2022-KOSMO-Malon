var memberService = (function() {
	function idchk(id, successCallBack, errorCallBack) {
		$.ajax({
			type : 'get',
			url : 'memIdchk?mem_acc_id=' + id,
			success : function(result, status, xhr) {
				if (successCallBack) {
					successCallBack(result);
				}
			},
			error : function(xhr, status, er) {
				if (errorCallBack) {
					errorCallBack(er);
				}
			}
		});
	}

	return {
		checkId : idchk
	}
})();
