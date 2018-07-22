document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById("myCanvas");
  canvas.width = 500;
  canvas.height = 500;
  const ctx = canvas.getContext('2d');
  ctx.fillStyle = "yellow";
  ctx.fillRect(0,0,500,500);

  ctx.beginPath();
  ctx.arc(160, 150, 100, 0, 2 * Math.PI, false);
  ctx.strokeStyle = "blue";
  ctx.lineWidth = 5;
  ctx.stroke();
  ctx.fillStyle ='red';
  ctx.fill();
});
