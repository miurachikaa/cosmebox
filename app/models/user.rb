class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items

  validates :nickname, presence: true
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }, allow_blank: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :age
  belongs_to :skin_type
  belongs_to :personal_color
  belongs_to :face_type
  
  
end
