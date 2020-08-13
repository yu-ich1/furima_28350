class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items

  with_options presence: true do
    validates :nickname, :date
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
    VALID_NAME_REGEX = /\A[ぁ-んァ-ン一-龥]/.freeze
    VALID_FURIGANA_REGEX = /\A[ァ-ヶー－]+\z/.freeze

    validates :first_name, :family_name, format: { with: VALID_NAME_REGEX, message: 'は漢字で入力してください。' }
    validates :first_name_kana, :family_name_kana, format: { with: VALID_FURIGANA_REGEX, message: 'はカナで入力してください。' }
    validates :password, format: { with: /\A[a-zA-Z0-9]+\z/, message: '半角英数で入力してください' }
  end
end
