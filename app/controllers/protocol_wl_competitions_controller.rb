class ProtocolWlCompetitionsController < ApplicationController
  before_action :set_protocol, only: [:update]

  def create
    @protocol = ProtocolWlCompetition.create(protocol_params)

    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    field = params[:set_param].to_sym
    data = params[:val_param]
    @protocol.update_attribute(field, data)
    @protocols = @protocol.competition.protocol_wl_competitions

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