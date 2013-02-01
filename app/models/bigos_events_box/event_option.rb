module BigosEventsBox
  class EventOption < ActiveRecord::Base
    attr_accessible :description, :event_id, :name, :price
  end
end
