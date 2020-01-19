class SessionsController < Devise::SessionsController

  def logout
    super
    session[:keep_signed_out] = true
  end

end
