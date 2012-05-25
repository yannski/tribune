class MessagesController < ApplicationController

  def index
    @messages = Message.where(:room_name => params[:room_name]).desc(:created_at).limit(50)

    respond_to do |format|
      format.json { render :json => @messages.to_json(:only => [:body, :created_at, :user_name], :methods => [:uid]) }
    end
  end

  def create
    @message = Message.new
    @message.body = params[:body]
    @message.room_name = params[:room_name]
    @message.user_name = request.env["HTTP_USER_AGENT"]

    respond_to do |format|
      if @message.save
        format.json { render json: @message.to_json(:only => [:body, :created_at, :user_name], :methods => [:uid]), status: :created }
      else
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end

    end
  end
end
