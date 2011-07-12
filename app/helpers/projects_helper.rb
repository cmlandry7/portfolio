module ProjectsHelper
  
  def next_project_path
    if @project == Project.last
      proj_id = 1
    else
      proj_id = @project.id
      proj_id += 1
    end
    return "/projects/#{proj_id}"
  end
  
  def prev_project_path
    if @project == Project.first
      proj_id = Project.last.id
    else
      proj_id = @project.id
      proj_id -= 1
    end
    return "/projects/#{proj_id}"
  end
  
end
