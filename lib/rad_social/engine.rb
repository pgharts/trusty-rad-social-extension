module RadSocial
  class Engine < Rails::Engine
    paths["app/helpers"] = []

    initializer "trusty_cms.assets.precompile" do |app|
      app.config.assets.precompile += %w(rad_sociala/rad_screen.css rad_social/captcha.js rad_social/rad_ajax_form.js rad_social/rad_email_form.js rad_social/rad_email_validator.js rad_social/rad_widget.js)
    end

  end
end
