class AddWeightToProtocolWlCompetition < ActiveRecord::Migration
  def change
    add_column :protocol_wl_competitions, :weight, :decimal
  end
end
