class Shop < ApplicationRecord
  has_many :pubs
  has_many :restaurants

end
