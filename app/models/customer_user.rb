class CustomerUser < ApplicationRecord
require 'csv'
  def self.import(file)
    CSV.foreach(csv_file.path, headers: false) do |row|
     CustomerUser.create! row.to_hash
    end
  end
end
