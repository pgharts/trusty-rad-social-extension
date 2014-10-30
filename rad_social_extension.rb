# Uncomment this if you reference any of your controllers in activate
# require_dependency "application_controller"
require "trusty-rad-social-extension"

class RadSocialExtension < TrustyCms::Extension
  version     TrustyRadSocialExtension::VERSION
  description TrustyRadSocialExtension::DESCRIPTION
  url         TrustyRadSocialExtension::URL

  # See your config/routes.rb file in this extension to define custom routes

  extension_config do |config|
    # config is the Radiant.configuration object
  end

  def activate
    # tab 'Content' do
    #   add_item "Rad Social", "/admin/rad_social", :after => "Pages"
    # end
    Page.send :include, Tags::WidgetTags
  end
end
