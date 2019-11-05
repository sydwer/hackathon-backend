class CreateNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :numbers do |t|
      t.text "text"
      t.boolean "found"
      t.integer "number"
      t.string "search_type"
      t.string "date"
      t.timestamps
    end
  end
end
