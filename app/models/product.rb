class Product < ApplicationRecord
    mount_uploader :image, ImageUploader
    serialize :image, JSON #this line is added beacuse we are using SQLite
    belongs_to :user, optional: true
    has_many :order_items

    validates :title, presence: true
    validates :description, length: { maximum: 500, too_long: "%{count} characters is the maximum alowed" }
    validates :title, length: { maximum: 150, too_long: "%{count} characters is the maximum alowed" }
    validates :price, numericality: { only_integer: true }, length: { maximum: 7 }
end
