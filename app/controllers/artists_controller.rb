class ArtistsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    if params[:search]
      @artists = Artist.search(params[:search]) unless params[:search].blank?
    elsif sort_direction
      @artists = Artist.order(sort_column + ' ' + sort_direction)
    else
      @artists = Artist.all
    end
  end

  def show
    @artist = Artist.find(params[:id])
    @photos = @artist.artistphotos
    @genres = @artist.genres
  end

  def sort_column
    Artist.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
