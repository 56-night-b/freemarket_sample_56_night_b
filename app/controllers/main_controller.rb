class MainController < ApplicationController

  def index #トップページ
    
    @ladies = Product.where(category: 1).order("id DESC").limit(10)
    @ladiesimages = Image.where(id:@ladies.ids).order("id DESC")

    @mens  = Product.where(category: 2).order("id DESC").limit(10)
    @mensimages = Image.where(id:@mens.ids).order("id DESC")

    @elecs  = Product.where(category: 8).order("id DESC").limit(10)
    @elecimages= Image.where(id:@elecs.ids).order("id DESC")

    @hobbies  = Product.where(category: 6).order("id DESC").limit(10)
    @hobbyimages =Image.where(id:@hobbies.ids).order("id DESC")

    @chanels  = Product.where(brand: 1).order("id DESC").limit(10)
    @chanelimages = Image.where(id:@chanels.ids).order("id DESC")

    @vuittons  = Product.where(brand: 3).order("id DESC").limit(10)
    @vuittonimages = Image.where(id:@vuittons.ids).order("id DESC")

    @supremes  = Product.where(brand: 4).order("id DESC").limit(10)
    @supremeimages = Image.where(id:@supremes.ids).order("id DESC")

    @nikes  = Product.where(brand: 2).order("id DESC").limit(10)
    @nikeimages = Image.where(id:@nikes.ids).order("id DESC")

  end

  def new# 商品出品
  end

  def updata#商品購入
  end

  def show#商品詳細
  end

  def product_purchase_confirmation#商品購入確認
  end
  
end