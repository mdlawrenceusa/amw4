class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :Client
      t.string :Description
      t.string :C3
      t.string :C4
      t.string :Media_Code
      t.date :Date_In
      t.date :Day_One
      t.date :Return_Date

      t.timestamps
    end
  end
end
