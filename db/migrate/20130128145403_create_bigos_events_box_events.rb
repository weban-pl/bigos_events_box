class CreateBigosEventsBoxEvents < ActiveRecord::Migration
  def change
    create_table :bigos_events_box_events do |t|
      t.string :name
      t.string :image
      t.integer :bigos_events_box_element_id

      t.timestamps
    end
  end
end
