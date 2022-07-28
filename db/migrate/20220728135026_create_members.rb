class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :email
      t.string :name
      t.string :password
      t.string :university
      t.integer :max_copy_of_book_allowed
      t.timestamps
    end
  end
end
