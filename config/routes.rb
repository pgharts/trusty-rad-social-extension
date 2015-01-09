
TrustyCms::Application.routes.draw do
  get '/rad_social/mail' => 'social_mailer#social_mail_form', as: :rad_social_mail_form
  post '/rad_social/mail' => 'social_mailer#create_social_mail', as: :rad_create_social_mail
end
