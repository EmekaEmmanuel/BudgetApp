class Category < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_one_attached :icon
  has_and_belongs_to_many :payments, class_name: 'Payment', foreign_key: 'payment_id'

  def total_category_amount
    transactions.where(user_id:).sum(:amount)
  end

end
