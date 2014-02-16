class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :account_name
      t.string :password
      t.string :email
      t.string :location
      t.integer :age

      t.timestamps
    end
  end
end
