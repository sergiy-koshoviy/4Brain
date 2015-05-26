class CreateAthleteCategories < ActiveRecord::Migration
  def change
    create_table :athlete_categories do |t|
      t.string :name
      t.integer :sport_id

      t.timestamps
    end
  end
end
