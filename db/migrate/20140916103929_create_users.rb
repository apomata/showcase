class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.string :email
      t.string :phone
      t.date :birthday

      t.timestamps
    end
  end
end
