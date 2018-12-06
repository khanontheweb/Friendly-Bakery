require 'action_mailer'

ActionMailer::Base.view_paths=File.dirname(__FILE__)
ActionMailer::Base.smtp_settings = {
    address: 'smtp.gmail.com',
    port: '587',
    user_name: ENV['EMAIL_USERNAME'],
    password: ENV['EMAIL_PASSWORD'],
    authentication: 'plain',
    :openssl_verify_mode  => 'none',
    :enable_starttls_auto => true
}

class Newsletter < ActionMailer::Base
    default from: 'snillmomo@gmail.com'

    def welcome(recipient)
        @recipient = recipient
        mail(to: recipient,
             subject: "[Signed Up] Welcome #{recipient}")
    end

end

Newsletter.welcome("snillmomo@gmail.com").deliver_now