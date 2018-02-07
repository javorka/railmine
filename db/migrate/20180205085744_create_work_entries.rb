class CreateWorkEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :work_entries do |t|
      t.integer :hours
      t.references :user, foreign_key: true
      t.references :issue, foreign_key: true

      t.timestamps
    end
  end
end
