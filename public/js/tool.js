function myFunction() {
	var e = document.getElementById('attendingRSPV');
	var strUser = e.options[e.selectedIndex].text;
	var guest = document.getElementById('guest_num');
	var guest_num = document.getElementById('guest');
	if (strUser == 'No') {
		guest_num.value = 0;
		guest.style.visibility = "hidden";

	} else {
		guest.style.visibility = "visible";
	}
}

function close_window() {
  if (confirm("Close Window?")) {
    close();
  }
}

 $(document).ready(function() {
 
            //Set mask for phone number field
           // $("#txtPhoneNumber").mask("(999) 999-9999");
 
            //Store numbers in hidden field
            $("#txtPhoneNumber").blur(function () {
 
                //Clear the hidden field
                $("#txtHiddenPhoneNumber").val("");
 
                //Create char array from phone number field
                var charArray = $(this).val().split("");
 
                var phoneNumber = "";
 
                //Iterate over each character in the char array
                //and determine if it is a number
                $.each(charArray, function(index, value) {
                    if (!isNaN(value) && value != " ") {
                        phoneNumber = phoneNumber + value;
                    }
                });
 
                //Set hidden field
                $("#txtHiddenPhoneNumber").val(phoneNumber);
            });
 
            $("#btnSubmit").click(function () {
                //If valid, show hidden field contents so we can
                //confirm that it is indeed just saving the number
                if($("#form1").valid()) {   
                    alert("Value in hidden field: " + $("#txtHiddenPhoneNumber").val());
                }
            });
        });