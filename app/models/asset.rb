class Asset < ActiveRecord::Base
  attr_accessible :C3, :C4, :Client, :Date_In, :Day_One, :Description, :Media_Code, :Return_Date
  
  def self.import(file)
     spreadsheet = open_spreadsheet(file)
     header = spreadsheet.row(1)
     (2..spreadsheet.last_row).each do |i|
       row = Hash[[header, spreadsheet.row(i)].transpose]
       asset = find_by_id(row["id"]) || new
       asset.attributes = row.to_hash.slice(*accessible_attributes)
       asset.save!
     end
   end

   def self.open_spreadsheet(file)
     case File.extname(file.original_filename)
     when ".csv" then Roo::Csv.new(file.path)
     when ".xls" then Roo::Excel.new(file.path)
     when ".xlsx" then Roo::Excelx.new(file.path)
     else raise "Unknown file type: #{file.original_filename}"
     end
   end

end
