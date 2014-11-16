get '/sms' do


  erb :sms
end



post '/sms' do

  account_sid = 'AC637f3eb8522510b7005993e2dbd00f8f'
  auth_token = '3b0edbea925db23e15b3a3f8cf277ab1'
  @client = Twilio::REST::Client.new account_sid, auth_token

  sms = @client.account.sms.messages.create(:body => "http://www.cnn.com",
    :media_url =>'http://example.com/smileyface.jpg',
    :from => "+19163850335",
    :to => params[:phone_number]
    )
  puts sms.from

  # Twilio.configure do |config|
  #   config.account_sid = "AC62c7745b0f52b541f121e6b8a5e5826e"
  #   config.auth_token = "88f7d3f7ce937389e02d419a16a6561d"
  # end
  # p params

  # @client = Twilio::REST::Client.new

  # @client.messages.create(
  # from: '+19163850335',
  # to: '+15109095034',
  # body: 'Patient Registration Test',
  # media_url: 'http://example.com/smileyface.jpg')


end