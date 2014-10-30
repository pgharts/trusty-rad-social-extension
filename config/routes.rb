
TrustyCms::Application.routes.draw do
  get '/rad_social/mail', controller:'social_mailer', action: 'social_mail_form'
  post '/rad_social/mail', controller:'social_mailer', action: 'create_social_mail'
end
