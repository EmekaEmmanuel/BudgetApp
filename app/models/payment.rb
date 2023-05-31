class Payment < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_and_belongs_to_many :categories, class_name: 'Category', foreign_key: 'category_id'

  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :author_id, presence: true
  validates :categories, presence: true
end
