el_username= document.querySelector("body > center > form > table > tbody > tr:nth-child(1) > td:nth-child(2) > input[type=text]");
el_password= document.querySelector("body > center > form > table > tbody > tr:nth-child(2) > td:nth-child(2) > input[type=password]");
el_username.value="{sea_username}";
el_password.value="{sea_password}";
form = document.querySelector("body > center > form");
form.submit()
