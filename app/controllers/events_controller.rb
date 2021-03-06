class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      @event.user_id = current_user.id
      @event.save
      redirect_to @user
    else
      print error
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :details)
  end

end
