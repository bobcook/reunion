class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.string :type
      t.string :number
      t.references :classmate

      t.timestamps
    end
  end
end
