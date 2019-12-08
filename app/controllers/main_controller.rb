class MainController < ApplicationController

  def index #トップページ
    
    @ladies = Product.where(category: 1).order("id DESC").limit(10)
    @ladiesimages = Image.where(id:@ladies.ids).order("id DESC")

    @mens  = Product.where(category: 2).order("id DESC").limit(10)
    @mensimage = Image.where(id:@mens.ids).order("id DESC")

    @elec  = Product.where(category: 8).order("id DESC").limit(10)
    @elecimage = Image.where(id:@elec.ids).order("id DESC")

    @hobby  = Product.where(category: 6).order("id DESC").limit(10)
    @hobbyimage =Image.where(id:@hobby.ids).order("id DESC")

    @chanel  = Product.where(brand: 1).order("id DESC").limit(10)
    @chanelimage = Image.where(id:@chanel.ids).order("id DESC")

    @vuitton  = Product.where(brand: 3).order("id DESC").limit(10)
    @vuittonimage = Image.where(id:@vuitton.ids).order("id DESC")

    @supreme  = Product.where(brand: 4).order("id DESC").limit(10)
    @supremeimage = Image.where(id:@supreme.ids).order("id DESC")

    @nike  = Product.where(brand: 2).order("id DESC").limit(10)
    @nikeimage = Image.where(id:@nike.ids).order("id DESC")

  end

  def new# 商品出品
  end

  def updata#商品購入
  end

  def show#商品詳細
  end

  def product_purchase_confirmation #商品購入確認
  end
  
end
