// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
  saveSportsman();
  selectCompetition();
  btnNewCompetition();
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

function selectCompetition() {
  $('#competition_id').change(function(){
    var id = $(this).val();

    $.ajax({
      url: '/competitions/'+id+'/load_competition',
      dataType: 'script',
      data: {
        id: id
      }
    })
  });
}

function btnNewCompetition(){
  $('.js-btn-toggle').on('click', function(){
    $('.js-block-toggle').toggle();
  })
}