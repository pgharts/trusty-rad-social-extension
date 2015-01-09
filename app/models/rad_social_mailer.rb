require 'mail'
class RadSocialMailer < ActionMailer::Base

  def social_mail options

    #binding.pry

    from_address = Mail::Address.new options[:from] # ex: "john@example.com"
    from_address.display_name = options[:from_name] # ex: "John Doe"
    mail(:to => options[:to], :from => from_address.format, :subject => options[:subject]) do |format|
      format.html {render :text => options[:message]}
    end

  end

end