#file: lib/text_message_sender.rb
require 'twilio-ruby'
require 'dotenv/load'


class TextMessageSender
    def self.send_confirmation(phone_number, delivery_time)
        client = Twilio::REST::Client.new(ENV['TWILIO_APE_KEY']), ENV['TWILIO_AUTO_TOKEN']
        from_phone_number = 'your_twilio_phone_number'

        message = "Thank you! Your order was placed and will be delivered before #{delivery_time}"

        client.message.create(
            from: from_phone_number,
            to: phone_number,
            body: message
        )
    end
end