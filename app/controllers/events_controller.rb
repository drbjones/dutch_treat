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
    @event = Event.new
    @event.end_date = params[:end_date]
    @event.start_date = params[:start_date]
    @event.location = params[:location]
    @event.image_url = params[:image_url]
    @event.description = params[:description]
    @event.name = params[:name]

    if @event.save
      @event_participant = EventParticipant.new
      @event_participant.event_id = params[:event_id]
      @event_participant.user_id = params[:user_id]
      @event_participant.event_owner = params[:event_owner]
      @event_participant.save
      redirect_to "/my_events", :notice => "Event created successfully."
    else
      redirect_to :back, :alert => "Event was not created."
    end



  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    @event.end_date = params[:end_date]
    @event.start_date = params[:start_date]
    @event.location = params[:location]
    @event.image_url = params[:image_url]
    @event.description = params[:description]
    @event.name = params[:name]

    if @event.save
      redirect_to "/events", :notice => "Event updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])

    @event.destroy

    redirect_to "/events", :notice => "Event deleted."
  end

  def my_events
    @events = current_user.events
    render 'index'
  end
end
