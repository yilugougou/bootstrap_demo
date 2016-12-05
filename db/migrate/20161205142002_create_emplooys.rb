class CreateEmplooys < ActiveRecord::Migration
  def change
    create_table :emplooys do |t|
      t.string :name
      t.string :number
      t.string :sex
      t.date :birthday
      t.text :description

      t.timestamps null: false
    end
  end
end
