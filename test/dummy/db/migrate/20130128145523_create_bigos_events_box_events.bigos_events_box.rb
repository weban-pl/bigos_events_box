# This migration comes from bigos_events_box (originally 20130128145403)
class CreateBigosEventsBoxEvents < ActiveRecord::Migration
  def change
    create_table :bigos_events_box_events do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
