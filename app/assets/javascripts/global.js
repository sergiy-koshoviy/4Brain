$(document).on("page:change", function(){
  initClock('local-time');
});

function initClock(id){
  $('#'+id).flipcountdown({
    size:"sm"
  });
}