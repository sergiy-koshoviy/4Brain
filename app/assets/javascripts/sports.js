// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
  saveSportsman();
});

function saveSportsman() {
  $('.protocol input').focusout(function(){
    var id = $(this).closest('tr').data('sportsman-id'),
        param = $(this).prop('name').split('[')[1].split(']')[0],
        val_param = $(this).val();

    $.ajax({
      url: '/protocol_wl_competitions/'+id+'/update',
      dataType: 'script',
      data: {
        set_param: param,
        val_param: val_param
      }
    })
  });
}