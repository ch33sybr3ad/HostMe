class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :email
      t.integer :password

      t.timestamps null: false
    end
  end
end
