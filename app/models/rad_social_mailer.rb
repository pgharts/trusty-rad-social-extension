require 'mail'
class RadSocialMailer < ActionMailer::Base
  include Roadie::Rails::Automatic

  def social_mail options
    from_address = Mail::Address.new options[:from] # ex: "john@example.com"
    from_address.display_name = options[:from_name] # ex: "John Doe"

    mail({
      to: options[:to],
      from: from_address.format,
      subject: options[:subject],
      text: options[:message],
      content_type: "text/html"
     })
  end
end
