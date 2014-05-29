class EventParticipantsController < ApplicationController
  def index
    @event_participants = EventParticipant.all
  end

  def show
    @event_participant = EventParticipant.find(params[:id])
  end

  def new
    @event_participant = EventParticipant.new
  end

  def create

    # if User.find_by(:name=>params[:name])
    #   redirect_to "/events/", :notice => "Event participant must be a registered user."
    # end

    @event_participant = EventParticipant.new
    @event_participant.event_id = params[:event_id]
    @event_participant.user_id = User.find_by(:name=>params[:name]).id
    @event_participant.event_owner = params[:event_owner]

    if @event_participant.save
      redirect_to "/events/#{@event_participant.event_id}", :notice => "Event participant created successfully."
    else
      redirect_to "/events/#{@event_participant.event_id}", :notice => "User is already a participant."
    end
  end

  def edit
    @event_participant = EventParticipant.find(params[:id])
  end

  def update
    @event_participant = EventParticipant.find(params[:id])

    @event_participant.event_id = params[:event_id]
    @event_participant.user_id = params[:user_id]
    @event_participant.event_owner = params[:event_owner]

    if @event_participant.save
      redirect_to "/event_participants", :notice => "Event participant updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @event_participant = EventParticipant.find(params[:id])
    event_id = @event_participant.event_id
    @event_participant.destroy

    redirect_to "/events/#{event_id}", :notice => "Event participant deleted."
  end
end
