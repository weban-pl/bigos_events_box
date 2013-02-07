module BigosEventsBox
  class EventOption < ActiveRecord::Base
    attr_accessible :description, :event_id, :name, :price
    belongs_to :event
  end
end
