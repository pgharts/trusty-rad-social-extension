ActionController::Routing::Routes.draw do |map|
  map.rad_social_mail_form '/rad_social/mail', :controller => 'social_mailer', :action => 'social_mail_form', :conditions => {:method => :get}
  map.create_rad_social_mail '/rad_social/mail', :controller => 'social_mailer', :action => 'create_social_mail', :conditions => {:method => :post}
end