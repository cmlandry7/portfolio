class ImagesController < ApplicationController
  
  def create
    @project = Project.find(params[:project_id])
    @image = @project.images.create(params[:image])
    redirect_to project_path(@project)
  end
  
  def destroy
    @project = Project.find(params[:project_id])
    @image = @project.images.find(params[:id])
    @image.destroy
    redirect_to project_path(@project)
  end
  
end
