require 'action_mailer'
require './baked_goods'

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
        @items = []
        @items << BakedGoods.cookies
        @items << BakedGoods.muffins
        @items << BakedGoods.cakes
        @items.flatten!
        @recipient = recipient
        mail(to: recipient,
            subject: "[Signed Up] Welcome #{recipient}")
    end

end

