require "bigos_events_box/engine"
require "carrierwave"
require "fog"
require "simple_form"
require "cocoon"

module BigosEventsBox

  module Controllers
    autoload :Helpers, 'bigos_events_box/controllers/helpers'
  end

  def self.setup
    include_helpers
    yield self
  end

  def self.include_helpers
    ActiveSupport.on_load(:action_controller) do
    end

    ActiveSupport.on_load(:action_view) do
      include BigosEventsBox::Controllers::Helpers
    end
  end
end
