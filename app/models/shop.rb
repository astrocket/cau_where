class Shop < ApplicationRecord
  has_many :pubs
  has_many :shops

end
