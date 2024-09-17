class CreateHistoryTable < ActiveRecord::Migration[6.0]
  def change
    create_table :history do |t|
      t.string :title, :null => false
      t.string :date, :null => false
      t.text :body
      t.timestamps
    end
  end
end
