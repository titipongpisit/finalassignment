class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :givenname
      t.string :surname
      t.string :gender
      t.integer :age
      t.integer :grade      
      t.string :organization
      t.string :email
      t.string :phone
      t.string :interest

      t.timestamps
    end
  end
end
