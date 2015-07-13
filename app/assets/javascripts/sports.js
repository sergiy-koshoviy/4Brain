// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on("page:change", function(){
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

    if (!!id) {
      $('.sportsman-form').removeClass('hide');
      $('#protocol_wl_competition_competition_id').val(id);
      $('.protocol-weighing-container').removeClass('hide');
      $('.protocol-competitions-container').removeClass('hide');
      $.ajax({
        url: '/competitions/'+id+'/load_competition',
        dataType: 'script',
        data: {
          id: id
        },
        success: function(e){
        },
        error:  function(e){
        }
      })
    }else{
      $('.sportsman-form').addClass('hide');
      $('#protocol_wl_competition_competition_id').val('');
      $('.protocol-weighing-container').addClass('hide');
      $('.protocol-competitions-container').addClass('hide');
    }


    $('#weightlifting-weighing').dataTable( {
      "scrollY":        "100px",
      "scrollCollapse": true,
      "paging":         false
    } );

    console.log('wwwwwwwwwwwwwwwwwwwww');

  });
}

function btnNewCompetition(){
  $('.js-btn-toggle-new-competition').on('click', function(){
    var newCompetition = $('.js-block-toggle-new-competition'),
        selector = $("#competition_id"),
        isOpen = false;

    $(newCompetition).toggle();

    if ($(newCompetition).is(':visible')) {
      isOpen = true;
    }

    if (isOpen) {
      $(selector).val(0);
      $(selector).change();
    }

  })
}