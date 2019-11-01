class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :url
      t.text :html
      t.string :title

      t.timestamps
    end
  end
end
