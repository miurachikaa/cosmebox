class Item < ApplicationRecord
  belongs_to :user

  validates :brand, presence: true
  validates :name, presence: true
  validates :category_id, numericality: { other_than: 1 }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  def self.category
    Item.where(category_id: @category )
  end

end
