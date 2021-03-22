class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :nickname,               presence: true
  validates :first_family_name,      presence: true
  validates :last_family_name,       presence: true
  validates :first_family_name_kana, presence: true
  validates :last_family_name_kana,  presence: true
  validates :birthday,               presence: true

  has_many :items
  has_one  :buyer
end
