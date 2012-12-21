class Contact < ActiveRecord::Base
  belongs_to :person
  belongs_to :category
  attr_accessible :address, :fax, :phone, :zip
end
