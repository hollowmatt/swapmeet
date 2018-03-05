class CreateTrinkets < ActiveRecord::Migration[5.0]
  def change
    create_table :trinkets do |t|

      t.timestamps
    end
  end
end
