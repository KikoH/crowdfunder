class PledgesController < ApplicationController
  def new
  	@pledge = Pledge.new	
  end

  def create
  	@pledge = Pledge.new(pledge_params)
  	# @reward = Reward.find(params[:reward_id])
  	# @pledge = Pledge.new(pledge_params)
  	# @reward.build_pledges
  	if @pledge.save
  		redirect_to projects_path
  	else
  		render "new"
  	end

  end

  def destroy
  	@pledge.find(params[:id])
  	@pledge.destroy
  end

  private
  def pledge_params
  	params.require(:pledge).permit(:reward_id)
  end
end
