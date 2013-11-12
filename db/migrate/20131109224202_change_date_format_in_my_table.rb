class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def self.up
    change_column :assets, :Date_In, :datetime
    change_column :assets, :Day_One, :datetime
    change_column :assets, :Return_Date, :datetime
  end

  def self.down
    change_column :assets, :Date_In, :date
    change_column :assets, :Day_One, :date
    change_column :assets, :Return_Date, :date
  end
end
