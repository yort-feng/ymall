class OmniauthCallbacksController < Devise::OmniauthCallbacksController   
  def google_oauth2

    @user = User.find_for_google_oauth2(request.env["omniauth.auth"], current_user)

    unless @user
      flash[:notice] = "You don't have rights to access such system"
      redirect_to new_user_session_url
      return
    end

    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
       sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.google_data"] = request.env["omniauth.auth"]
      redirect_to new_user_session_url
    end
  end
end  
