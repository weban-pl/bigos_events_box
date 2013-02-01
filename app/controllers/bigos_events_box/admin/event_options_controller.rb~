require_dependency "bigos_events_box/application_controller"
module BigosEventsBox

  class Admin::EventOptionsController < ApplicationController

    def destroy
      @eo = BigosEventsBox::EventOption.find(params[:id])
      @eo.destroy

      redirect_to request.referer
    end

  end

end
