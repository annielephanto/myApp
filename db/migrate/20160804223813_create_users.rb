class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last
      t.string :name

      t.timestamps null: false
    end
  end
end
