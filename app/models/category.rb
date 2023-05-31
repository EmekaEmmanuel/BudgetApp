class Category < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id' 
  has_and_belongs_to_many :payments, class_name: 'Payment', foreign_key: 'payment_id'

  def total_category_amount
    payments.where(user_id:).sum(:amount)
  end

  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :author_id, presence: true
  validates :icon, presence: true
end
