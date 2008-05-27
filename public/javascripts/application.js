// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
if (!Date.now) {
    Date.now = function() {
        return (new Date()).getTime();
    };
}

function updateClock() {
  var el = $("uhr");
  var time = new Date();
  
  var hours = time.getHours(),
      minutes = time.getMinutes(),
      seconds = time.getSeconds();
  
  if (hours < 10)
    hours = "0" + hours;

  if (minutes < 10)
    minutes = "0" + minutes;

  if (seconds < 10)
    seconds = "0" + seconds;

  
  el.update("<p>" + hours + ":" + minutes + ":" + seconds + "</p>");
}

document.observe("dom:loaded", function(ev) {
  if ($("uhr")) {
    window.setInterval(updateClock, 1000);
  }
})