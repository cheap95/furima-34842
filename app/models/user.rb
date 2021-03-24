class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    validates :birthday

    with_options format: { with: /\A[ぁ-んァ-ン一-龥々]+\z/ } do
      validates :first_family_name
      validates :last_family_name
    end

    with_options format: { with: /\A[ァ-ヶー－]+\z/} do
      validates :first_family_name_kana
      validates :last_family_name_kana
    end   
    PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
    validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください' 
      
    end

  has_many :items
  has_one  :buyer
end
