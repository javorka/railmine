class CreateIssueComments < ActiveRecord::Migration[5.1]
  def change
    create_table :issue_comments do |t|
      t.string :comment
      t.references :user, foreign_key: true
      t.references :issue, foreign_key: true

      t.timestamps
    end
  end
end
