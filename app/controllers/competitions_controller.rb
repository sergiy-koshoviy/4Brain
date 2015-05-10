class CompetitionsController < ApplicationController
  before_action :set_competition, only: [:load_competition]

  def create
    @competition = Competition.create(competition_params)

    respond_to do |format|
      format.html
      format.js
    end
  end

  def load_competition
    @protocols = @competition.protocol_wl_competitions

    respond_to do |format|
      format.html
      format.js
    end
  end

  private
  def set_competition
    @competition = Competition.find(params[:id])
  end

  def competition_params
    params.require(:competition).permit(:name, :address)
  end
end