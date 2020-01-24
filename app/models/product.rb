class Product < ApplicationRecord
  has_many :reading_attention_resumes
  has_many :nices
  has_many :images
  has_many :before_messages
  belongs_to :saler, class_name: "User"
  belongs_to :buyer, class_name: "User"
end
