class Link < ActiveRecord::Base
  belongs_to :user, optional: true

  validates :url, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 5 }

  has_many :votes
end