document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById('mycanvas');
    const ctx = canvas.getContext('2d');

    ctx.fillStyle = 'red';
    ctx.fillRect(250, 250, 100, 300);

    ctx.beginPath();
    ctx.arc(75, 75, 50, 0, 2*Math.PI);
    ctx.strokeStyle = "blue";
    ctx.lineWidth = 2
    ctx.stroke();
    ctx.fillStyle = "yellow";
    ctx.fill();
    ctx.clearRect(0, 0, canvas.width, canvas.height);

    


});
