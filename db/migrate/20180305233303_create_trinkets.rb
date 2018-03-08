class CreateTrinkets < ActiveRecord::Migration[5.0]
  def change
    create_table :trinkets do |t|
    	t.string :title
    	t.text :description
    	t.string :photo_path
    	t.decimal :price
      t.timestamps
    end
  end
end
