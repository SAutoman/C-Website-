function CheckRegister() {
    let check_first_name = CheckName('firstname', 'error_firstname');
    let check_last_name = CheckName('lastname', 'error_lastname');
    let check_email = CheckEmail('email', 'error_email');
    let check_Password = CheckPass('password', 'error_pass');
    let check_Id = CheckId('id', 'error_id');
    let check_Date = CheckDate('year', 'error_DOB');
    let check_gender = CheckRadio('gender', 'error_gender');
    let res = true;
    res = res && check_first_name;
    res = res && check_last_name;
    res = res && check_Password;
    res = res && check_email;
    res = res && check_Id;
    res = res && check_Date;
    res = res && check_gender;
    res = res && check_question;
    return res;

}
function SubmitRegister(){
    if (CheckRegister()) {
        document.getElementById('error_form').innerHTML = "";
        document.getElementById('register_form').submit();
        return true;
    }
    else {
        document.getElementById('error_form').innerHTML = "There are errors in the form. Please correct them.";
        document.getElementById('error_form').style.color = "red";
        return false;
    }
}
function CheckName(id, error_id) {
    let flag_checkname = false;
    let element = document.getElementById(id);
    let wrong_tav = "!~`@#$%^&*()_+=-|\}]{['?/.><,";

    for (i = 0; i < element.value.length; i++) {
        if (isNaN(element.value[i])) {
        } else {
            flag_checkname = true;
            document.getElementById(error_id).innerHTML = "names dont have numbers, please rewrite name";
            document.getElementById(error_id).style.color = "Red";
            break;
        }
    }
    for (j = 0; j < wrong_tav.length; j++) {
        for (k = 0; k < element.value.length; k++) {
            if (element.value[k] === wrong_tav[j]) {
                flag_checkname = true;
                document.getElementById(error_id).innerHTML = "names dont have !,@.... please correct it";
                document.getElementById(error_id).style.color = "Red";

            }
        }
    }
    if (element.value == "") {
        flag_checkname = true;
        document.getElementById(error_id).innerHTML = "its empty please write...";
        document.getElementById(error_id).style.color = "Red";
    } else if (element.value.length < 2 || element.value.length >= 20) {
        flag_checkname = true;
        document.getElementById(error_id).innerHTML = "the name needs to be between 2 and 20 letters.";
        document.getElementById(error_id).style.color = "Red";
    }
    if (flag_checkname) {
        return false;
    } else {
        document.getElementById(error_id).innerHTML = "";
        return true;
    }
}
function CheckEmail(id, error_id) {
    let inputText = document.getElementById(id);
    let mailFormat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    if (inputText.value.match(mailFormat)) {
        document.getElementById(error_id).innerHTML = "";
        return true;
    }
    else {
        if (inputText.value == "") {
            document.getElementById(error_id).innerHTML = "you didnt write please rewrite";
        }
        else if (!inputText.value.includes("@")) {
            document.getElementById(error_id).innerHTML = "You forgot to include '@' in the email address.";
        }
        else if (inputText.value.indexOf("@") !== inputText.value.lastIndexOf("@")) {
            document.getElementById(error_id).innerHTML = "Invalid email address. More than one '@' found.";
        }
        else if (inputText.value.startsWith("@") || inputText.value.startsWith(".")) {
            document.getElementById(error_id).innerHTML = "Invalid email address. Cannot start with '@' or '.'";
        }
        else if (inputText.value.includes("..")) {
            document.getElementById(error_id).innerHTML = "Invalid email address. Double dots '..' are not allowed.";
        }
        else if (!inputText.value.split('@')[1].includes(".")) {
            document.getElementById(error_id).innerHTML = "You forgot to include a dot '.' after the gmail.";
        }
        else if (inputText.value.endsWith(".")) {
            document.getElementById(error_id).innerHTML = "You forgot to include e.g., .com or.org...";
        }
        else if (inputText.value.match(/\.\w{3,}$/) == null) {
            document.getElementById(error_id).innerHTML = "after the . the email have to inclued at least 3 characters ";
        }
        else {
            document.getElementById(error_id).innerHTML = "Invalid email address. Please check the format.";
        }
        document.getElementById(error_id).style.color = "red";
        return false;
    }
}
function CheckPass(id, error_id) {
    let inputText = document.getElementById(id);
    let password = inputText.value.trim();
    let hasNumber = /\d/.test(password);
    let hasCharacter = /[a-zA-Z]/.test(password);

    if (password.length < 6) {
        document.getElementById(error_id).innerHTML = "Password must be at least 6 characters long.";
        document.getElementById(error_id).style.color = "red";
        return false;
    } else if (!hasNumber) {
        document.getElementById(error_id).innerHTML = "Password must contain at least one number.";
        document.getElementById(error_id).style.color = "red";
        return false;
    } else if (!hasCharacter) {
        document.getElementById(error_id).innerHTML = "Password must contain at least one character.";
        document.getElementById(error_id).style.color = "red";
        return false;
    }
    else {
        document.getElementById(error_id).innerHTML = "";
        return true;
    }
}
function CheckId(id, error_id) {
    let element = document.getElementById(id);
    let idNumber = element.value.trim();

    if (idNumber.length !== 9) {
        document.getElementById(error_id).innerHTML = "ID must be exactly 9 digits long.";
        document.getElementById(error_id).style.color = "red";
        return false;
    } else if (isNaN(idNumber)) {
        document.getElementById(error_id).innerHTML = "ID must contain only digits (no characters).";
        document.getElementById(error_id).style.color = "red";
        return false;
    } else {
        document.getElementById(error_id).innerHTML = "";
        return true;
    }
}
function CheckDate(id, error_id) {
    let element = document.getElementById(id);
    let date = element.value.trim();

    if (date === "") {
        document.getElementById(error_id).innerHTML = "Date is empty. Please enter a date.";
        document.getElementById(error_id).style.color = "red";
        return false;
    } else if (date.length !== 4 || isNaN(date)) {
        document.getElementById(error_id).innerHTML = "Date must be a 4-digit number.";
        document.getElementById(error_id).style.color = "red";
        return false;
    } else {
        var year = parseInt(date);
        if (year < 1950 || year > 2024) {
            document.getElementById(error_id).innerHTML = "Date must be between 1950 and 2024.";
            document.getElementById(error_id).style.color = "red";
            return false;
        } else {
            document.getElementById(error_id).innerHTML = "";
            return true;
        }
    }
}
function CheckRadio(id, error_id) {
    let radio = document.getElementsByName(id);
    let selected = false;
    for (var i = 0; i < radio.length; i++) {
        if (radio[i].checked) {
            selected = true;
            break;
        }
    }
    if (!selected) {
        document.getElementById(error_id).innerHTML = "please select an option";
        document.getElementById(error_id).style.color = "red";
    }
    else {
        document.getElementById(error_id).innerHTML = "";
        document.getElementById(error_id).style.color = "";
    }
    return selected;
}
function ClearRegister() {
    document.getElementById('error_firstname').innerHTML = "";
    document.getElementById('error_lastname').innerHTML = "";
    document.getElementById('error_email').innerHTML = "";
    document.getElementById('error_pass').innerHTML = "";
    document.getElementById('error_id').innerHTML = "";
    document.getElementById('error_DOB').innerHTML = "";
    document.getElementById('error_gender').innerHTML = "";
    document.getElementById('error_form').innerHTML = "";
    document.getElementById('msg').innerHTML = '';
    document.getElementById('st').innerHTML = "";
}