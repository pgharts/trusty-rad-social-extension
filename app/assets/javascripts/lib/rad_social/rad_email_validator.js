function RadEmailValidator(parentElement) {
    var rules = {
        "rs-from": {
            required: true,
          email: true,
            messages: {
                required: "From email is required."
            }
        },
        "rs-from_name": {
            required: true,
            messages: {
                required: "From name is required."
            }
        },
        "rs-to": {
            required: true,
            email: true,
            messages: {
                required: "To email is required"
            }
        },
        "recaptcha_response_field": {
            captcha: true
        },
        "rs-message": {
            required: true,
            messages: {
                required: "Email message is required."
            }
        }
    };

  var captcha = new Captcha("#recaptcha-container");
  jQuery.validator.addMethod('captcha',
          function(value, element) {
              return captcha.isValid();
          },
          "For security purposes, you must enter the characters in the box above."
   );

    this.addRules = function() {
        for (var key in rules) {
            $(parentElement).find("[id$=" + key + "]").rules("add", rules[key]);
        }
    };

    this.removeRules = function() {
        for (var key in rules) {
            $(parentElement).find("[id$=" + key + "]").rules("remove");
        }
    };

    function elementKeyFor(key) {
        return "[id$=" + parentElement.attr('id') + '_' + key + ']';
    }

}
