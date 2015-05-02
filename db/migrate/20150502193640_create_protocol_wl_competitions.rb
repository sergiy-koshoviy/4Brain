class CreateProtocolWlCompetitions < ActiveRecord::Migration
  def change
    create_table :protocol_wl_competitions do |t|
      t.integer :competition_id
      t.string :first_name
      t.string :last_name
      t.datetime :birthday
      t.string :address
      t.integer :class_id
      t.string :sex
      t.decimal :first_snatch
      t.decimal :second_snatch
      t.decimal :third_snatch
      t.decimal :result_snatch
      t.decimal :first_jerk
      t.decimal :second_jerk
      t.decimal :third_jerk
      t.decimal :result_jerk
      t.decimal :total_result
      t.integer :place

      t.timestamps
    end
  end
end
