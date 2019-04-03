class CoursesController < ApplicationController


  def index
    @courses = Course.all
  end

  def show
    @courses = Course.find_by(slug: params[:slug])

    if @courses.nil?
      flash[:alert] = "Oups aucun cours n'a été trouvé!"
      redirect_to root_path
    end
  end
end
