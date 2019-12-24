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
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:password_confirmation] = user_params[:password_confirmation]
    @user = User.new # 新規インスタンス作成
  end

  def sign_up_address
    session[:my_phone_number] = user_params[:my_phone_number]
    @user = User.new # 新規インスタンス作成
    @user.build_address
    @address = Address.new
  end

  def sign_up_payment
    session[:famliy_name_kanji] = user_params[:famliy_name_kanji]
    session[:first_name_name_kanji] = user_params[:first_name_name_kanji]
    session[:famliy_name_kana] = user_params[:famliy_name_kana]
    session[:first_name_name_kana] = user_params[:first_name_name_kana]
    # session[:address_attributes] = user_params[:address_attributes]
    session[:postal_cord] = user_params[:address_attributes][:postal_cord]
    session[:prefectures] = user_params[:address_attributes][:prefectures]
    session[:municipalities] = user_params[:address_attributes][:municipalities]
    session[:house_number] = user_params[:address_attributes][:house_number]
    session[:building_name] = user_params[:address_attributes][:building_name]
    session[:phone_number] = user_params[:address_attributes][:phone_number]
    @user = User.new # 新規インスタンス作成
    @address = Address.new
    @card = Card.new
  end

  def sign_up_done
    # sign_in User.find(session[:id]) unless user_signed_in?
  end

  def create
    session[:expiration_date]=expiration_date_join
    session[:card_number] = card_params[:card_number]
    session[:securitycord] = card_params[:securitycord]
    @user = User.new(
      nickname: session[:nickname], # sessionに保存された値をインスタンスに渡す
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      my_phone_number: session[:my_phone_number],
      famliy_name_kanji: session[:famliy_name_kanji],
      first_name_name_kanji: session[:first_name_name_kanji],
      famliy_name_kana: session[:famliy_name_kana],
      first_name_name_kana: session[:first_name_name_kana]
    )
    # num = Address.all.length
    # u_id = User.limit(1).order('id DESC').select('id')
    # user_address = @user.build_address
    # @address1 = Address.new(
    #   postal_cord: session[:postal_cord],
    #   prefectures: session[:prefectures],
    #   municipalities: session[:municipalities],
    #   house_number: session[:house_number],
    #   building_name: session[:building_name],
    #   phone_number: session[:phone_number]
    # )
    # @address = @user.build_address
    # @address.user=@user
    # binding.pry
    # @card = Card.new(
    #   card_number: session[:card_number],
    #   expiration_date: session[:expiration_date],
    #   securitycord: session[:securitycord]
    # )
    if @user.save
      user_address = @user.build_address
      address_create = @user.created_at
      address_updated = @user.updated_at
      @address = Address.new(
        postal_cord: session[:postal_cord],
        prefectures: session[:prefectures],
        municipalities: session[:municipalities],
        house_number: session[:house_number],
        building_name: session[:building_name],
        phone_number: session[:phone_number],
        user_id: user_address[:user_id],
        created_at: address_create,
        updated_at: address_updated
      )
      if @address.save
        @card = Card.new(
          card_number: session[:card_number],
          expiration_date: session[:expiration_date],
          securitycord: session[:securitycord],
          user_id: user_address[:user_id],
          created_at: address_create,
          updated_at: address_updated
        )
        binding.pry
        if @card.save
          # ログインするための情報を保管
          session[:id] = @user.id
          redirect_to sign_up_done_users_path
        else
          render "sign_up_payment"
        end
      else
        render "sign_up_address"
      end
    else
      render "sign_up_memberinfo"
    end
  end

  def logout
  end

  private

   def user_params
    params.require(:user).permit(
      :nickname, 
      :email, 
      :password, 
      :password_confirmation, 
      :my_phone_number,
      :famliy_name_kanji,
      :first_name_name_kanji,
      :famliy_name_kana,
      :first_name_name_kana,
      address_attributes:[:postal_cord,:prefectures,:municipalities,:house_number,:building_name,:phone_number]
    )
    end

    # def address_params
    #   params.require(:address).permit(
    #     :postal_cord,
    #     :prefectures,
    #     :municipalities,
    #     :house_number,
    #     :building_name,
    #     :phone_number
    #   )
    # end

    def card_params
      params.require(:card).permit(
        :card_number,
        :expiration_date,
        :securitycord
      )
    end

    def expiration_date_join
      date_yy = params[:card]["expiration_date(1i)"]
      date_mm = params[:card]["expiration_date(2i)"]

      if date_mm.empty? && date_yy.empty? 
        return
      end

      Date.new(20+date_yy.to_i/date_mm.to_i) 
    end
    
  
end
