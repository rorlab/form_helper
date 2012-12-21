class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :person
      t.references :category
      t.string :zip
      t.string :address
      t.string :phone
      t.string :fax

      t.timestamps
    end
    add_index :contacts, :person_id
    add_index :contacts, :category_id
  end
end
