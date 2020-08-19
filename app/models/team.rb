class Team < ApplicationRecord
  belongs_to :user
  has_one_attached :logo

  validates :name, presence: true, uniqueness: true


  def optimized_image(image, x, y)
    return image.variant(resize_to_fill: [x, y]).processed
  end
  
end
