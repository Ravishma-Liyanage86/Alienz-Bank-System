
/*NIC validation*/

function validateNIC() {
    var nic = document.getElementById('NIC');
    var msg = document.getElementById('msg');

    if (nic.value.length != 12 && nic.value.length != 10) {
        msg.innerHTML = "N.I.C. must be 10 or 12 characters";
        msg.style.color = "#F10707";
    } else {
        msg.innerHTML = "N.I.C. length is valid";
        msg.style.color = "#350D7C";
    }
}
/*Email validation*/
function validateEmail() {
    var email = document.getElementById("email").value;
    var emailMsg = document.getElementById("emailMsg");

    var pattern = /[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$/;
    if (email.match(pattern)) {
        console.log('matched');
        emailMsg.innerHTML = " valid email address";
        emailMsg.style.color = "#350D7C";

    } else {
        emailMsg.innerHTML = " Please  enter a valid email address";
        emailMsg.style.color = "#F10707";

    }

    if (email == "") {
        emailMsg.innerHTML = " valid email address";
        emailMsg.style.color = "#350D7C";

    }
}


/*  Password Validation*/
var validatePassword = function() {
    if (document.getElementById('new').value ==
        document.getElementById('cpassword').value) {
        document.getElementById('message').style.color = '#350D7C';
        document.getElementById('message').innerHTML = 'Password match with previous password';
    } else {
        document.getElementById('message').style.color = '#F10707';
        document.getElementById('message').innerHTML = 'Password not match with previous password"';
    }
}
 