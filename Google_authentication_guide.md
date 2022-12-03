
<!-- Google Authentication with Omniauth -->

1- Add Gems => { gem "omniauth" ,  gem "omniauth-google-oauth2" , gem "omniauth-rails_csrf_protection" }

2- Add columns into User => :uid , :provider , :avatar_url

3- Allow omniauth into devise model =>  :omniauthable , omniauth_providers: [:google_oauth2]

4- /config/initializers/devise.rb =>  config.omniauth :google_oauth2, Rails.application.credentials.dig(:google_oauth_client_id), Rails.application.credentials.dig(:google_oauth_client_secret)

5- Go to google console to generate the API key

6- In your Terminal write => EDITOR="nano --wait" rails credentials:edit
once new screen open adds the :google_oauth_client_id and :google_oauth_client_secret
secret_key_base: 57cc8e8e6ef4923cacd304abc933010cde79c7ad32de520e0510b302c8e32280fe1976dd8de4d5e18a032355090c7b0d9d75039d1b50f6fde728a72c89c54aae
 google_oauth_client_id: YOUR_ID_GENERATED_FROM_GOOGLE_CONSOLE
 google_oauth_client_secret: YOUR_SECRET_GENERATED_FROM_GOOGLE_CONSOLE


{CHANGE THE :google_oauth_client_id and :google_oauth_client_secret FROM YOUR GENERATED KEY}