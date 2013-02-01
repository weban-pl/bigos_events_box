module BigosApp
  class BigosEventsBoxElement < PageElement
    attr_accessible :is_admin_visible, :name, :type, :page_id, :position, :events_attributes
    has_many :events, :class_name => "BigosEventsBox::Event"

    accepts_nested_attributes_for :events


    def self.class_name
      "Events module"
    end

    def render
      "bigos_events_box/item"
    end

    def admin_render
      "bigos_events_box/admin/item"
    end

  end
end