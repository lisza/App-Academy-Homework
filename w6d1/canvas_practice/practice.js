document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById("mycanvas");
  canvas.width = 500;
  canvas.height = 500;

  const ctx = canvas.getContext('2d');

  ctx.fillStyle = 'blue';
  ctx.fillRect(0,0,100,100);

  ctx.beginPath();
  // arc(x, y, radius, startAngle, endAngle, anticlockwise)
  ctx.arc(160, 51, 50, 0, 2*Math.PI, true);
  ctx.strokeStyle = 'purple';
  ctx.lineWidth = 3;
  ctx.stroke();
  ctx.fillStyle = "lightpink";
  ctx.fill();
});
