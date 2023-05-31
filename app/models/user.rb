class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :categories, foreign_key: :user_id, dependent: :delete_all
  has_many :transactions, foreign_key: :user_id, dependent: :delete_all

  validates :name, presence: true, length: { maximum: 50 }
  # validates :posts_counter, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }
  # validates :name, presence: true, length: { maximum: 250 }
  # validates :preparation_time, presence: true
end
