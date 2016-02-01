require 'recaptcha'

class RadCaptchaFilter

  def initialize controller
    @controller = controller
  end

  def self.before controller
    RadCaptchaFilter.new(controller).verify
  end

  def verify
    unless verify_captcha
      @controller.send :head, :bad_request, :ErrorMsg => "The security code that you entered does not match the one in the image. Please enter the security code again."
    end
  end

  private

  def verify_captcha
    @controller.extend Recaptcha::Verify
    @controller.verify_recaptcha(:private_key => Rails.configuration.captcha_private_key)
  end

end
