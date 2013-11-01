class AddFieldsToPins < ActiveRecord::Migration
  def change
    add_column :pins, :event_title, :string
    add_column :pins, :event_date, :date
    add_column :pins, :event_time, :time
    add_column :pins, :event_host, :string
    add_column :pins, :event_free, :string
    add_column :pins, :event_rating, :integer
  end
end
