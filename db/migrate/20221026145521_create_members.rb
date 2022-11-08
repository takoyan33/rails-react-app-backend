class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.integer :userid
      t.string :fullname
      t.string :hurigana
      t.string :department
      t.string :grade
      t.string :gender
      t.string :birthday
      t.string :admin

      t.timestamps
    end
  end
end
