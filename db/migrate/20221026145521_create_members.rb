class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string  :profilepic
      t.integer :userid
      t.string :fullname
      t.string :hurigana
      t.string :department
      t.string :grade
      t.string :gender
      t.date :birthday
      t.boolean :admin

      t.timestamps
    end
  end
end
