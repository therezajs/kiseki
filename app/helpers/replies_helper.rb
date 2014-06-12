module RepliesHelper
	def new_reply
    @reply = Reply.new
  end

  def display_replies(message_id)
    @replies = Reply.where(message_id: message_id)
  end
end
