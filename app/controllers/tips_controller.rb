class TipsController < ApplicationController
  def index
    if params[:q].present?
      tip = Tip.where(
        "tips.title ILIKE ? OR tips.body ILIKE ?" ,
        "%#{params[:q]}%", "%#{params[:q]}%"
      ).first
      render json: tip
    else
      @tips = Tip.all
    end
  end

  def show
    @tip = Tip.find(params[:id])
  end
end
