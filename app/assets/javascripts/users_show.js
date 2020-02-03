window.addEventListener("load", function() {
  $('#open').on('click', 'p',function(){
    var open = document.getElementById('open');
    var close = document.getElementById('close');
    var modal = document.getElementById('modal');
    var mask = document.getElementById('mask');

    open.addEventListener('click',function(){
      modal.className = '';
      mask.className = '';
    });

    close.addEventListener('click',function(){
      modal.className = 'hidden';
      mask.className = 'hidden';
    });

    mask.addEventListener('click',function(){
      modal.className = 'hidden';
      mask.className = 'hidden';
    });
  });
});