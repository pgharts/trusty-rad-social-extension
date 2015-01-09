class SocialMailerController < ApplicationController
  trusty_layout "default", {:only => :create_social_mail}
  before_filter Filters::RadCaptchaFilter, :only => :create_social_mail
  no_login_required

  def create_social_mail

    mailer_options = {
      :to => params[:to],
      :from => params[:from],
      :from_name => params[:from_name],
      :message => params[:message],
      :subject => params[:subject]
    }

    RadSocialMailer.social_mail(mailer_options).deliver
    head :ok

  end

  def social_mail_form
    render :template => "rad_social_mailer/social_mail_form",
           :layout => false,
           :locals => {
             :email_message => params[:email_message],
             :email_subject => params[:email_subject],
             :email_action_url => params[:email_action_url]
           }
  end

end