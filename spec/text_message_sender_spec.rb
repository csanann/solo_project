#file: spec/text_message_sender_spec.rb

require 'text_message_sender'
require 'bundler/setup'
require 'twilio-ruby'
require 'dotenv/load'

RSpec.describe TextMessageSender do
    let(:client) { double("Twilio::REST::Client") }
    let(:message) { double("Twilio::REST::Api::V2010::MessageList") }

    before do
        allow(Twilio::REST::Client).to receive(:new).and_return(client)
        allow(client).to receive(:message).and_return(message).with(
            from: 'your_twilio_phone_number',
            to: '07568765443',
            body: "Thank you! Your order was placed and will be delivered before 18:52"
        )

        TextMessageSender.send_confirmation('07568765443', '18:52')
    end
end