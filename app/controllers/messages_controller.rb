class MessagesController < ApplicationController
  @messages = Message.all
end
