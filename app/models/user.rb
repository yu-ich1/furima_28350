class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname, :date
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
    validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "は漢字で入力してください。" }
    validates :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "は漢字で入力してください。" }
    validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/, message: "はカナで入力してください。"  }
    validates :family_name_kana, format: { with: /\A[ァ-ヶー－]+\z/, message: "はカナで入力してください。" }
  end
end

#:first_name, :family_name, :first_name_kana, :family_name_kana,
