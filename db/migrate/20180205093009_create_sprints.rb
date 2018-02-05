class CreateSprints < ActiveRecord::Migration[5.1]
  def change
    create_table :sprints do |t|
      t.date :from
      t.date :to
      t.string :name
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
