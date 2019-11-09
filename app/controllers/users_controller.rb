class UsersController < ApplicationController
  
  def mypage
  end

  def notice
  end

  def to_do
  end

  def nice
  end

  def selling
  end

  def transacting
  end

  def sold
  end

  def buy_transacting
  end

  def buy_transacted
  end

  def news
  end

  def reviews
  end

  def sign_up1
    @user = User.new
  end

  def sign_up2
    session[:nickname] = params[:nickname]
    session[:email] = params[:email]
    session[:password] = params[:password]
    session[:password_confirmation] = params[:password_confirmation]
    @user = User.new # 新規インスタンス作成
  end

  def sign_up3
    session[:phone_number] = params[:phone_number]
    @user = User.new # 新規インスタンス作成
    @address = Address.new # 新規インスタンス作成
  end

  def sign_up4
    session[:name_kanji] = params[:name_kanji]
    session[:name_kana] = params[:name_kana]
    session[:postal_cord] = params[:postal_cord]
    session[:prefectures] = params[:prefectures]
    session[:municipalities] = params[:municipalities]
    session[:house_number] = params[:house_number]
    session[:building_name] = params[:building_name]
    session[:phone_number] = params[:phone_number]
    @address = Address.new # 新規インスタンス作成
  end

  def done
  end
end
