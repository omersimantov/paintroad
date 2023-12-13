class Painting < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2, maximum: 255 }
  validates :description, length: { maximum: 2000 }, allow_blank: true
  validates :image_url, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp }
  validates :painter, presence: true, length: { minimum: 2, maximum: 255 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :order_link, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp }
end