class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :nickname, :date, presence: true
         VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
        #  validates :email, {presence: true, , format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }}
        validates :family_name, presence: true, format: { with: /\A[一-龥]+\z/ }
         validates :family_name, presence: true, format: { with: /\A[a-z\d]+\z/i }
         validates :first_name_kana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
         validates :family_name_kana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
         validates :first_name, presence: true, format: { with: /\A[一-龥]+\z/}
         

end
         
#:first_name, :family_name, :first_name_kana, :family_name_kana, 