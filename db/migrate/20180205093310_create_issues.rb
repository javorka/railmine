class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.string :name
      t.string :description
      t.integer :estimation
      t.integer :type
      t.integer :state
      t.references :sprint, foreign_key: true
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
