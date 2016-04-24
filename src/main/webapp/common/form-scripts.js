$(function () {
	$("input").on("blur", function (e) {//focus removed from any field
		var thisInput = $(this);

		//example
		if(thisInput.is("[name='telephone']")){
			//todo after user inputs smth and changes value  - update UI state (show/ hide error if needed)
			console.log("WORKS");
		}
	});
});