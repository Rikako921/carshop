class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  validates :price_total, presence: true
  validates :year, presence: true
  validates :distance, presence: true
  validates :inspection, presence: true
  validates :color, presence: true
  validates :car_name, presence: true
  validates :car_model, presence: true
  validates :rec_point, presence: true  
  validates :grade, presence: true
  validates :image, presence: true

end
