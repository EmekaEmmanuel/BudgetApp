class Category < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_one_attached :icon
  # has_and_belongs_to_many :transactions, class_name: 'Transaction', foreign_key: 'transaction_id'

  def total_category_amount
    transactions.where(user_id:).sum(:amount)
  end

end
