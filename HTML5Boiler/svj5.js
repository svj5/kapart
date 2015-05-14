function validate()

{

var userlen=document.getElementById("user");

	if(userlen.value == '') 
	
	{
		alert("Please enter a user ID.");

		document.getElementById("user").focus();

		return false;
	}

	if(userlen.value.length < 5 || userlen.value.length > 10)
	
	{

		alert("The user ID you entered is not the correct length.");

		document.getElementById("user").focus();

		return false;

	}


var pwlen=document.getElementById("pw");


	if(document.getElementById("pw").value == '')

	{

		alert("Please enter a Password!")

		return false;
	
	}

	if(pwlen.value.length < 5 || pwlen.value.length > 15)

	{

		alert("The Password you entered is not the correct length.");

		return false;

	}

return true;	

}

