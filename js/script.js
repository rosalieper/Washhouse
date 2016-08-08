document.getElementById("foot01").innerHTML =
"<p>&copy;  " + new Date().getFullYear() + " Wash house. All rights reserved.</p>"+"<p>ttttttttttt</p>";

document.getElementById("row1").innerHTML =
"<ul id='menu'>" +
"<li><a href='index.html'>Home</a></li>" +
"<li><a href='Services.html'>Services</a></li>" +
"<li><a href='About Us.html'>About</a></li>" +
"<li><a href='Location.html'>Location</a></li>"+
"<li><a href='Contact Us.html'>Contact Us</a></li>"+
"<li><a href='Whats new.html'>What's new</a></li>"+
"</ul>";

$(document).ready(function(){
    $("#mybtn").click(function(){
        $("#myModal").modal();
    });
});
