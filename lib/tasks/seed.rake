namespace :seed do
  desc 'generate all sports'
  task g_all_aports: :environment do
    weightlifting = Sport.find_by_name('weightlifting')
    if weightlifting
      weightlifting.update_attributes(name: 'weightlifting')
    else
      Sport.create(name: 'weightlifting')
    end
  end
end