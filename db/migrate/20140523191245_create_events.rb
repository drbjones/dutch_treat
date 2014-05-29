class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :end_date
      t.date :start_date
      t.string :location
      t.text :image_url
      t.text :description
      t.string :name

      t.timestamps

    end
  end
end
