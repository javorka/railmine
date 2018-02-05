class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.integer :role
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
