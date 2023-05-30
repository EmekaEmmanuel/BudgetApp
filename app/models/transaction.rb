class Transaction < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'

  has_and_belongs_to_many :categories, class_name: 'Category', foreign_key: 'category_id'

end 