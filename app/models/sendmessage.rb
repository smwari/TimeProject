require 'twilio-ruby'

def sendmsg(msg, recipient, date)
    
    account_sid = "AC2f14267146887ed06db092446ec98898" # Your Account SID from www.twilio.com/console
    auth_token = "56a37b48377dc08e8f74a108188ad9b2"   # Your Auth Token from www.twilio.com/console

    begin
        @client = Twilio::REST::Client.new account_sid, auth_token
        @msg = @client.messages.create(
            body: msg + " do this by #{date}",
            to: ("+1" + recipient),    
            from: "+13479919581") 
    rescue Twilio::REST::TwilioError => e
        puts e.message
    end
    
end


    
