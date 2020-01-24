class User < ApplicationRecord
  belongs_to :saler, class_name: "User"
  belongs_to :buyer, class_name: "User"
  
  has_many :buyed_items, foreign_key: "buyer_id", class_name: "Product"
  has_many :saling_items, -> { where("buyer_id is NULL") }, foreign_key: "saler_id", class_name: "Product"
  has_many :sold_items, -> { where("buyer_id is not NULL") }, foreign_key: "saler_id", class_name: "Product"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :nickname,                presence: true
  validates :email,                   presence: true
  validates :password,                presence: true
  validates :password_confirmation,   presence: true
  
  validates :my_phone_number,         presence: true
  
  validates :famliy_name_kanji,       presence: true
  validates :first_name_name_kanji,   presence: true
  validates :famliy_name_kana,        presence: true
  validates :first_name_name_kana,    presence: true
  validates :postal_cord,             presence: true
  validates :prefectures,             presence: true
  validates :municipalities,          presence: true
  validates :house_number,            presence: true
  validates :building_name,           presence: true
  validates :phone_number,            presence: true
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :cards
  accepts_nested_attributes_for :cards
end
