# Uncomment this if you reference any of your controllers in activate
# require_dependency "application_controller"
require "radiant-rad_social-extension"

class RadSocialExtension < Radiant::Extension
  version     RadiantRadSocialExtension::VERSION
  description RadiantRadSocialExtension::DESCRIPTION
  url         RadiantRadSocialExtension::URL

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
