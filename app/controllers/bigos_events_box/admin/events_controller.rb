require_dependency "bigos_events_box/application_controller"
module BigosEventsBox

  class Admin::EventsController < ApplicationController

    def destroy
      @event = BigosEventsBox::Event.find(params[:id])
      @event.destroy

      redirect_to request.referer
    end

  end

end
