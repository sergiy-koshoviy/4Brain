module ApplicationHelper
  def datepicker_defaults(date = nil)
    {
      class: 'date',
      dateFormat: 'mm/dd/yy',
      changeMonth: true, changeYear: true,
      showOn: 'button', buttonImageOnly: true, buttonImage: image_path('icons/calendar.gif')
    }
  end
end
