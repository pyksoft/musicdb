class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
    @artists = @genre.artists
    @artist = Artist.find(params[:id])
    @photos = @artist.artistphotos
  end
end
