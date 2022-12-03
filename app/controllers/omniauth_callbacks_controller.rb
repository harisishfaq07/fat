class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    # skip_before_action :verify_authenticity_token

def google_oauth2
user = User.from_omniauth(auth)
# debugger
if user.present?
    # debugger
    sign_out_all_scopes
    flash[:success] = t 'devise.omniauth_callbacks.success' , kind: 'Google'
    sign_in_and_redirect user , event: :authentication

else
    flash[:alert] = t 'devise.omniauth_callbacks.failure' , kind: 'Google' , reason: "#{auth.info.email} is not authorized"
    redirect_to new_user_session_path
end
end


private
def auth
    @auth ||= request.env['omniauth.auth']
end
end