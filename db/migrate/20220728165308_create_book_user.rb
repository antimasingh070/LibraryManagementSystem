class CreateBookUser < ActiveRecord::Migration[7.0]
  def change
    create_table :book_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.datetime :issue_datetime
      t.timestamps
    end
  end
end
