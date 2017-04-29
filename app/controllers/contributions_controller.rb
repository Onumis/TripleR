class ContributionsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :destroy]

  def index
    @contributions = current_user.contributions
  end

  def show
    @contribution = current_user.contributions.find(params[:id])
  end

  def edit
    @contribution = Contribution.find(params[:id])
  end

  def create
    @contribution = Contribution.new(contribution_params)
    if @contribution.save
      redirect_to edit_contribution_path(@contribution)
    end
  end

  def update
    @contribution = Contribution.find(params[:id])
    if current_user
      @contribution.user = current_user
    end
    @contribution.update(contribution_params)
    redirect_to root_path
  end

  def destroy
    contribution = current_user.contributions.find(params[:id])
    contribution.destroy
  end

  private

  def contribution_params
    params.require(:contribution).
           permit(:image, :container)
  end
end
