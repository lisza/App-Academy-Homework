// timeout
window.setTimeout(function(){
  alert("HAMMERTIME!");
}), 5000);

// timeout with closure
function hammertime(time) {
  window.setTimeout(function (){
    alert(`${time} is HAMMERTIME!`);
  });
}
