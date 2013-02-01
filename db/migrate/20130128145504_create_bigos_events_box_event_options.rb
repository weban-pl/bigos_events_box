class CreateBigosEventsBoxEventOptions < ActiveRecord::Migration
  def change
    create_table :bigos_events_box_event_options do |t|
      t.integer :event_id
      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
