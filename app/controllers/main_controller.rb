class MainController < ApplicationController

  def index #トップページ
    
    @ladies = Product.where(category: 1).order("id DESC").limit(10)
    @ladies_group = Image.group(:product_id)
    @ladiesimages = @ladies_group.where(product_id:@ladies.ids).order("id DESC")

    @mens  = Product.where(category: 2).order("id DESC").limit(10)
    @mens_group = Image.group(:product_id)
    @mensimages = @mens_group.where(product_id:@mens.ids).order("id DESC")

    @elecs  = Product.where(category: 8).order("id DESC").limit(10)
    @elec_group = Image.group(:product_id)
    @elecimages = @elec_group.where(product_id:@elecs.ids).order("id DESC")
    
    @hobbies  = Product.where(category: 6).order("id DESC").limit(10)
    @hobbies_group = Image.group(:product_id)
    @hobbyimages =@hobbies_group.where(product_id:@hobbies.ids).order("id DESC")

    @chanels  = Product.where(brand: 1).order("id DESC").limit(10)
    @chanels_group = Image.group(:product_id)
    @chanelimages = @chanels_group.where(product_id:@chanels.ids).order("id DESC")

    @vuittons  = Product.where(brand: 3).order("id DESC").limit(10)
    @vuittons_group = Image.group(:product_id)
    @vuittonimages = @vuittons_group.where(product_id:@vuittons.ids).order("id DESC")

    @supremes  = Product.where(brand: 4).order("id DESC").limit(10)
    @supremes_group = Image.group(:product_id)
    @supremeimages = @supremes_group.where(product_id:@supremes.ids).order("id DESC")

    @nikes  = Product.where(brand: 2).order("id DESC").limit(10)
    @nikes_group = Image.group(:product_id)
    @nikeimages = @nikes_group.where(product_id:@nikes.ids).order("id DESC")

  end

  def new# 商品出品
  end

  def updata#商品購入
  end

  def show#商品詳細
    @product = params[:id]
    @product_name =Product.find(params[:id]).name
    @saler = Product.find(params[:id]).saler
    @category = Product.find(params[:id]).category
    @brand = Product.find(params[:id]).brand
    @product_size = Product.find(params[:id]).product_size
    @shipping_method = Product.find(params[:id]).shipping_method
    @producut_situation = Product.find(params[:id]).producut_situation
    @postage_burden = Product.find(params[:id]).postage_burden
    @shipping_origin = Product.find(params[:id]).shipping_origin
    @arrival_days = Product.find(params[:id]).arrival_days
    @image_first = Image.where(product_id:@product).first
    @image = Image.where(product_id:@product)
    product_price = Product.find(params[:id]).value
    @product_price ="¥#{product_price.to_s(:delimited, delimiter: ',')}"
    @soldout_btn = Product.find(params[:id]).buyer

    @user_sellingProduct = Product.where(saler_id:@saler.id).order("id DESC").limit(6)
    @user_sellingProduct_group = Image.group(:product_id)
    @user_sellingImage = @user_sellingProduct_group.where(product_id:@user_sellingProduct.ids).order("id DESC").limit(6)

    @user_brand = Product.where(brand: @brand).order("id DESC").limit(10)
    @user_brand_group = Image.group(:product_id)
    @user_brandImage = @user_brand_group.where(brand:@brand).order("id DESC")
  end

  def product_purchase_confirmation#商品購入確認
  end
  
end