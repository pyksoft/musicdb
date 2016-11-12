class SongsController < ApplicationController


  def index
    @songs = Song.all
  end

  def show
    @song = @artist.songs.find(params[:id])
  end

private

  def artist_params
    params.require(:artist).permit(:name, :image)
  end

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end



end
