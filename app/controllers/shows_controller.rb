class ShowsController < ApplicationController

  def show_params
    return params.require(:show).permit([:title, :series, :description, :image, :rogrammeID])
  end

  def index
    shows = Show.all()
    render :json => shows
  end

  def create
    new_show = Show.create(show_params)
    render :json => new_show
  end

end
