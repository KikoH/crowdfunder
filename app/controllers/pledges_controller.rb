class PledgesController < ApplicationController
  def create
  	@pledge = Pledge.new(pledge_params)
  	@pledge.backer_id = current_user.id
  	@project = @pledge.project

  	respond_to do |format|
	  	if @pledge.save
	  		format.js
	  		format.html {redirect_to projects_path}
	  	else
	  		format.html {redirect projects_path}
	  	end
  		
  	end


  end

  def destroy
  	@pledge.find(params[:id])
  	@pledge.destroy
  end

  private
  
  def pledge_params
  	pledge_params = params.require(:pledge).permit(:contribution, :reward_id, :project_id)
  end

end
