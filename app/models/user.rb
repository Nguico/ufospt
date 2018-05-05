class User < ApplicationRecord
  validates :user_name, presence: true, length: { minimum: 2, maximum: 16 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :spots, dependent: :destroy
end
