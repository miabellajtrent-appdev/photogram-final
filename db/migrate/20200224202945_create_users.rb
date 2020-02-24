class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :password
      t.string :photos
      t.string :email
      t.boolean :private

      t.timestamps
    end
  end
end
