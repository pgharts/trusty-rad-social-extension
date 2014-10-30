module Tags::WidgetTags
  include Radiant::Taggable

  desc "Widget of sharing icons"
  tag "rad_share_widget" do |tag|
    attributes = tag.attr.to_options
    url = attributes[:url].nil? ? request.url : attributes[:url]
    message = attributes[:message].nil? ? "Check out #{tag.locals.page.title}." : attributes[:message]
    email_subject = attributes[:email_subject].nil? ? tag.locals.page.title : attributes[:email_subject]
    email_message = attributes[:email_message].nil? ? "I thought you might be interested in this: #{url}" : "#{attributes[:email_message]} #{url}"
    email_action_url = attributes[:email_action_url].nil? ? "/rad_social/mail" : attributes[:email_action_url]

    response.template.render "widget/horizontal_widget",
                             :locals => { :url => url,
                                          :message => message,
                                          :email_subject => email_subject,
                                          :email_message => email_message,
                                          :email_action_url => email_action_url
                             }
  end

end