class User < ApplicationRecord
  has_many :microposts
  validates :name, presence: true
  validates_presence_of :email
  validates :name, length: {in: 2..20}
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
end
