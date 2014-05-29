class CreateExpenseOweds < ActiveRecord::Migration
  def change
    create_table :expense_oweds do |t|
      t.float :portion_owed
      t.integer :user_id
      t.integer :expense_id

      t.timestamps

    end
  end
end
