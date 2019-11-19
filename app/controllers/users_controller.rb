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

  def profile
  end

  def card
  end

  def identification
    @prefectures=[{id:1,name:"北海道"},{id:2,name:"青森県"},{id:3,name:"岩手県"},{id:4,name:"宮城県"},{id:5,name:"秋田県"},{id:6,name:"山形県"},{id:7,name:"福島県"},{id:8,name:"東京都"},{id:9,name:"神奈川県"},{id:10,name:"埼玉県"},{id:11,name:"千葉県"},{id:12,name:"茨城県"},{id:13,name:"栃木県"},{id:14,name:"群馬県"},{id:15,name:"山梨県"},{id:16,name:"新潟県"},{id:17,name:"長野県"},{id:18,name:"富山県"},{id:19,name:"石川県"},{id:20,name:"福井県"},{id:21,name:"愛知県"},{id:22,name:"岐阜県"},{id:23,name:"静岡県"},{id:24,name:"三重県"},{id:25,name:"大阪府"},{id:26,name:"兵庫県"},{id:27,name:"京都府"},{id:28,name:"滋賀県"},{id:29,name:"奈良県"},{id:30,name:"和歌山県"},{id:31,name:"鳥取県"},{id:32,name:"島根県"},{id:33,name:"岡山県"},{id:34,name:"広島県"},{id:35,name:"山口県"},{id:36,name:"徳島県"},{id:37,name:"香川県"},{id:38,name:"愛媛県"},{id:39,name:"高知県"},{id:40,name:"福岡県"},{id:41,name:"佐賀県"},{id:42,name:"長崎県"},{id:43,name:"熊本県"},{id:44,name:"大分県"},{id:45,name:"宮城県"},{id:46,name:"鹿児島県"},{id:47,name:"沖縄県"}]
    session[:postal_cord] = params[:postal_cord]
    session[:prefectures] = params[:prefectures]
    session[:municipalities] = params[:municipalities]
    session[:house_number] = params[:house_number]
    session[:building_name] = params[:building_name]
    @address = Address.new
  end

  def sign_up_memberinfo
    @user = User.new
  end

  def sign_up_tel_number
    session[:nickname] = params[:nickname]
    session[:email] = params[:email]
    session[:password] = params[:password]
    session[:password_confirmation] = params[:password_confirmation]
    @user = User.new # 新規インスタンス作成
  end

  def sign_up_address
    session[:phone_number] = params[:phone_number]
    @user = User.new # 新規インスタンス作成
    @address = Address.new # 新規インスタンス作成
  end

  def sign_up_payment
    session[:name_kanji] = params[:name_kanji]
    session[:name_kana] = params[:name_kana]
    session[:postal_cord] = params[:postal_cord]
    session[:prefectures] = params[:prefectures]
    session[:municipalities] = params[:municipalities]
    session[:house_number] = params[:house_number]
    session[:building_name] = params[:building_name]
    session[:phone_number] = params[:phone_number]
    @address = Address.new # 新規インスタンス作成
    @card = Card.new
  end

  def sign_up_done
    session[:card_number] = params[:card_number]
    session[:expiration_date] = params[:expiration_date]
    session[:securitycord] = params[:securitycord]
    @card = Card.new
  end

  def logout
  end
end
