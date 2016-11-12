require 'slack-notifier'

class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat_room
  validates :body, presence: true, length: {minimum: 2, maximum: 1000}

  after_create_commit { MessageBroadcastJob.perform_later(self) }

  def timestamp
    created_at.strftime('%H:%M')
  end

  def seconds
    created_at.strftime(':%S')
  end

  def slack(message)
    if message.include? "@" + user.profile.firstname
      notifier = Slack::Notifier.new "https://hooks.slack.com/services/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"
      notifier.username = "MusicDB (BOT)"
      notifier.ping "You are mentioned: #{message} in *#{chat_room.title}*", icon_url: "https://api.adorable.io/avatars/285/abott@adorable.io.png"
    end
  end

end
