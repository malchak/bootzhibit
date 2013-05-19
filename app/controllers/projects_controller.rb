class ProjectsController < ApplicationController


	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
		@boots = Boot.new
	end

	def create
		@project = Project.create(params[:project])
		redirect_to root_path
	end

	def show
		@project = Project.find(params[:id])
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.update_attribures(params[:project])
		redirect_to project_path(@project)
	end


end