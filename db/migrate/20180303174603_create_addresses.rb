class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street1
      t.string :stree2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.references :classmate

      t.timestamps
    end
  end
end
