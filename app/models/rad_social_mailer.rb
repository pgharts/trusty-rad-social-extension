class RadSocialMailer < ActionMailer::Base

  def social_mail options

    email_recipients = Rails.configuration.test_email_recipients ? Rails.configuration.test_email_recipients : options[:to]

    recipients email_recipients
    from options[:from]
    subject options[:subject]
    sent_on Time.now
    content_type "text/html"
    body :from_name => options[:from_name], :from_email => options[:from], :message => options[:message]

  end

end