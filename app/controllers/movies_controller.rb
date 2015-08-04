class MoviesController < ApplicationController
  def index
    @list_of_directors = Director.all
  end

  def director
    @director_one= Director.find(params["id"])
  end

  def destroy
    @director_one= Director.find(params["id"])
    @director_one.destroy

    redirect_to("http://localhost:3000/directors")
  end

end
