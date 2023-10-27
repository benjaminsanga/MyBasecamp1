class ProjectsController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :create]
  
  def new
    @project = Project.new  # Initialize a new project instance
  end
  
  def create
    @project = current_user.projects.build(project_params)
    if @project.save
      redirect_to @project, notice: 'Project was successfully created.'
    else
      render :new
    end
  end

  # ...

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end
end
