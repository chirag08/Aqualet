


(function(){
	 $('.datepicker').pickadate({
	    selectMonths: true, // Creates a dropdown to control month
	    selectYears: 15 // Creates a dropdown of 15 years to control year
	  }); 
})();

var select_type=0;

function next(x){
	if(x == '1'){
	document.getElementById("1").style.display = "none";	
	document.getElementById("2").style.display = "block";
	}
	else if(x == '2'){
	document.getElementById("2").style.display = "none";	
	document.getElementById("3").style.display = "block";
	}
	else if(x == '3'){
	document.getElementById("3").style.display = "none";	
	document.getElementById("4").style.display = "block";
	}
	else if(x == '4'){
	document.getElementById("4").style.display = "none";	
	document.getElementById("5").style.display = "block";
	document.getElementById("submit").style.display = "block";
	}
}


function back (x){
	if(x == '1'){
		alert("no");
	}
	else if(x == '2'){
	document.getElementById("2").style.display = "none";	
	document.getElementById("1").style.display = "block";

	}
	else if(x == '3'){
	document.getElementById("3").style.display = "none";	
	document.getElementById("2").style.display = "block";
	}
	else if(x == '4'){
	document.getElementById("4").style.display = "none";	
	document.getElementById("3").style.display = "block";
	}
	else if(x == '5'){
	document.getElementById("submit").style.display = "none";
	document.getElementById("5").style.display = "none";	
	document.getElementById("4").style.display = "block";
	}

}

function proceed(){
	
	if ($("#inst:checked")) {
   			$('#order_form').attr("action", "/orders/" + new_inst);
   			$('#order_form').attr("method","post");
   			$('#order_form').submit();
      }
      else
      {
      		$('#order_form').attr("action", "/orders/" + new_subs);
      		$('#order_form').attr("method","post");
      		$('#submit').submit();	
      }
}



