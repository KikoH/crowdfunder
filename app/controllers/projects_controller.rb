class ProjectsController < ApplicationController

	#load_and_authorize_resource

	def index
		if params[:tag]
			@projects = Project.tagged_with(params[:tag])
		else	
			@projects = Project.all
		end

	end

	def show
		@project = Project.find(params[:id])
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		@project.owner = current_user

		if @project.save
			redirect_to project_path(@project)
		else
			render 'new'
		end
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])	
		if @project.update_attributes(project_params)
			redirect_to project_path(@project)
		else
			render 'edit'
		end
	end

	def destroy
		@project = Project.find(params[:id])	
		@project.destroy
		redirect_to projects_path
	end

	private

	def project_params
		params.require(:project).permit(:tag_list, :name, :description, :start_date, :end_date, :funding_goal, rewards_attributes: [:price_tier, :description, :_destroy])
	end



end
