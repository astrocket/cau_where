class CreatePubs < ActiveRecord::Migration[5.0]
  def change
    create_table :pubs do |t|
      t.string :title
      t.belongs_to :shop, index: true

      t.timestamps
    end
  end
end
