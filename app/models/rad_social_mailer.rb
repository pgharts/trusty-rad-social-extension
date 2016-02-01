require 'mail'
class RadSocialMailer < ActionMailer::Base
  include Roadie::Rails::Automatic

  def social_mail options
    from_address = Mail::Address.new options[:from] # ex: "john@example.com"
    from_address.display_name = options[:from_name] # ex: "John Doe"

    @from_name = from_address.display_name
    @from_email = from_address
    @message = options[:message]

    mail({
      to: options[:to],
      from: @from_email,
      subject: options[:subject],
      text: @message,
      content_type: "text/html"
     })
  end
end
