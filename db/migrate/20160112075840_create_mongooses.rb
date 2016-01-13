class CreateMongooses < ActiveRecord::Migration
  def change
    create_table :mongooses do |t|
      t.string :name
      t.decimal :weight
      t.integer :length
      t.integer :height

      t.timestamps null: false
    end
  end
end
