class Product < ApplicationRecord
  
  validates :name, uniqueness: true
  validates :description, length: {in: 10..200}
  validates :price, presence: true, numericality: {greater_than: 0}
  validates :stock, numericality: {greater_than: 0}

  has_many :images

  belongs_to :supplier

  has_many :product_categories

  has_many :categories, through: :product_categories

  has_many :carted_products

  has_many :orders, through: :carted_products
  
  def is_discounted?
      price < 10
  end

  def tax
      price * 0.09
  end

  def total
      price + tax
  end
end
