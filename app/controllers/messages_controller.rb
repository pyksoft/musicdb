class MessagesController < ApplicationController

  def show
    @profle = current_user.profile
  end

end
