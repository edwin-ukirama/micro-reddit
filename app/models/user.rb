class User < ApplicationRecord
  has_many :posts, dependent: :delete_all

  validates :username, length: { in: 4..12 }, uniqueness: true, presence: true
  validates :email, presence:true
  validates :password, length: { in: 6..16 }
end
