class RepliesController < ApplicationController

  def create
    @reply = Reply.new(reply_params)

    respond_to do |format|
      if @reply.save
        format.html { redirect_to message_path(id: reply_params[:message_id] ), notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: message_path(id: reply_params[:message_id] ) }
      else
        format.html { render action: 'new' }
        format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
    end
  end

  def reply_params
    params.require(:reply).permit(:reply, :user_id, :message_id)
  end
end
