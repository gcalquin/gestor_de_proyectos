class ProjectsController < ApplicationController

  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard

  def dashboard

       @projects = Project.all

       @projectspropuesta = Project.propuesta
       @projectsenprogreso = Project.enprogreso
       @projectsterminado = Project.terminado
 
  end

  

  def new

  end

  def create
    @project = Project.create(name: params[:name], description: params[:description],begin: params[:begin], end: params[:end], state: params[:state])
  end
end
