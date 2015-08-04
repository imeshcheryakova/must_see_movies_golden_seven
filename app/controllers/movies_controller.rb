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

  def new_form
  end

  def create_row

    p=Director.new
    p.name=params["name"]
    p.bio=params["bio"]
    p.dob=params["dob"]
    p.image_url=params["image_url"]
    p.save

    redirect_to("http://localhost:3000/directors")
  end


  def edit_form
    @director_one = Director.find(params["id"])
  end

  def update_row
    p.name=params["name"]
    p.bio=params["bio"]
    p.dob=params["dob"]
    p.image_url=params["image_url"]
    p.save

    redirect_to("http://localhost:3000/directors/#{p.id}")

  end
end
