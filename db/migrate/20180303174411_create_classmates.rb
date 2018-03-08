class CreateClassmates < ActiveRecord::Migration[5.1]
  def change
    create_table :classmates do |t|
      t.string :first_name
      t.string :last_name
      t.string :married_name
      t.string :spouse
      t.boolean :paid
      t.boolean :attending
      t.references :status
      t.references :user

      t.timestamps
    end
  end
end
