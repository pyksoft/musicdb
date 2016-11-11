class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
    @artists = @genre.artists
    @artist = Artist.find(params[:id])
    @photos = @artist.artistphotos
  end
end
