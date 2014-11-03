# Sets up the Rails environment for Cucumber
ENV["RAILS_ENV"] = "test"
# Extension root
extension_env = File.expand_path(File.dirname(__FILE__) + '/../../../../../config/environment')
require extension_env+'.rb'

Dir.glob(File.join(TRUSTY_CMS_ROOT, "features", "**", "*.rb")).each {|step| require step unless step =~ /datasets_loader\.rb$/}
 
Cucumber::Rails::World.class_eval do
  dataset :rad_social
end