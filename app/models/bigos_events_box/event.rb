module BigosEventsBox
  class Event < ActiveRecord::Base
    attr_accessible :image, :name, :event_options_attributes
    has_many :event_options, :dependent => :destroy

    accepts_nested_attributes_for :event_options

    mount_uploader :image, BigosEventsBox::EventImageUploader

  end
end
