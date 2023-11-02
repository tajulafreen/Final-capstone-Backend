class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialization
      t.text :bio
      t.string :image
      t.decimal :fee
      
      t.timestamps
    end
  end
end
