class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :roll
      t.integer :batch
      t.string :email
      t.belongs_to :team
      t.timestamps
    end
  end
end
