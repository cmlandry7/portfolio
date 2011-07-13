module ProjectsHelper
  
  def rank_projects
    projects = Project.all(:order => "ranking")
    return projects
  end
  
  def next_project_path
    # return array of ranked projects
    projects = rank_projects
    # return the position of project in ranked array
    proj_rank = rank_projects.index(@project)
    
    if @project == projects.last
      proj_rank = 0
    else
      proj_rank += 1
    end
    
    # returns id of the next project
    proj_id = projects[proj_rank].id
    return "/projects/#{proj_id}"
  end
  
  def prev_project_path
    # return array of ranked projects
    projects = rank_projects
    # return the position of project in ranked array
    proj_rank = rank_projects.index(@project)
    
    if @project == projects.first
      proj_rank = projects.size 
      proj_rank -= 1
    else
      proj_rank -= 1
    end
    
    # returns id of the next project
    proj_id = projects[proj_rank].id
    return "/projects/#{proj_id}"
  end
  
end
