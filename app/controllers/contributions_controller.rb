class ContributionsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @contributions = current_user.contributions
  end

  def show
    @contribution = current_user.contributions.find(params[:id])
  end

  def edit
    @contribution = current_user.contributions.find(params[:id])
  end

  def create
    @contribution = current_user.contributions.build(contribution_params)
    if @contribution.save
      render :edit
    else
      # ...
    end
  end

  def update
    @contribution = current_user.contributions.find(params[:id])
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
