class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :age
  belongs_to :skin_type
  belongs_to :personal_color
  belongs_to :face_type
  
  validates :age_id, :skin_type_id, :personal_color_id, :face_type_id,
   numericality: { other_than: 1 } 
end
