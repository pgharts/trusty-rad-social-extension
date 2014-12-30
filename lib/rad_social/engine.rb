module RadSocial
  class Engine < Rails::Engine
    paths["app/helpers"] = []

    initializer "trusty_cms.assets.precompile" do |app|
      app.config.assets.precompile += %w(rad_social/rad_screen.css lib/rad_social/captcha.js lib/rad_social/rad_ajax_form.js lib/rad_social/rad_email_form.js lib/rad_social/rad_email_validator.js lib/rad_social/rad_widget.js)
    end

  end
end
