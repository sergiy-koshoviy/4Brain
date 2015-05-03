class ProtocolWlCompetitionsController < ApplicationController
  # before_action :set_protocol, only: [:show, :edit, :update, :destroy]

  def create
    @protocol = ProtocolWlCompetition.create(protocol_params)

    respond_to do |format|
      format.html
      format.js
    end
  end

  private
  def set_protocol
    @protocol = ProtocolWlCompetition.find(params[:id])
  end

  def protocol_params
    params.require(:protocol_wl_competition).permit(
      :competition_id,
      :first_name,
      :last_name,
      :birthday,
      :address,
      :class_id,
      :sex,
      :weight,
      :first_snatch,
      :second_snatch,
      :third_snatch,
      :result_snatch,
      :first_jerk,
      :second_jerk,
      :third_jerk,
      :result_jerk,
      :total_result,
      :place
    )
  end
end