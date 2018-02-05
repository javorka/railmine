class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.integer :status
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
