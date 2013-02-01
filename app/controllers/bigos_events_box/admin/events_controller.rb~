require_dependency "bigos_events_box/application_controller"
module BigosEventsBox

  class Admin::EventsController < ApplicationController

    def index
      @events = BigosEventsBox::Event.all
    end

    def new
      @event = BigosEventsBox::Event.new

    end

    def create
      @event = BigosEventsBox::Event.new(params[:event])

      respond_to do |format|
        if @event.save
          format.html { redirect_to bigos_events_box.admin_events_path }
        else
          format.html { render action: "new" }
        end
      end
    end

    def edit
      @event = BigosEventsBox::Event.find(params[:id])
    end

    def update
      @event = BigosEventsBox::Event.find(params[:id])

      respond_to do |format|
        if @event.update_attributes(params[:event])
          format.html { redirect_to bigos_events_box.admin_events_path, notice: 'Event was successfully updated.' }
        else
          format.html { render action: "edit" }
        end
      end

    end

    def destroy
      @event = BigosEventsBox::Event.find(params[:id])
      @event.destroy

      redirect_to request.referer
    end

  end

end
