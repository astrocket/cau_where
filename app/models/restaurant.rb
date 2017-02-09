class Restaurant < ApplicationRecord
  has_many :comments, as: :commentable, dependent: :destroy

  def self.search(search)
    where('title LIKE ?', "%#{search}%")
  end
end
