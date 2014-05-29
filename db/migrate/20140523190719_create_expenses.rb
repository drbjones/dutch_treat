class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.date :date_occured
      t.integer :event_id
      t.float :amount
      t.text :description
      t.integer :user_id

      t.timestamps

    end
  end
end
