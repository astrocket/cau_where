class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :shop_type, default: 'general'

      t.timestamps
    end
  end
end
