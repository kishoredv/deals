class LinkedinsController < ApplicationController

  def index
    client = LinkedIn::Client.new("api key", "ssh")
    request_token = client.request_token(:oauth_callback =>"http://#{request.host_with_port}/linkedins/callback", :user_id => current_user.id)
    session[:rtoken] = request_token.token
    session[:rsecret] = request_token.secret
   
    redirect_to client.request_token.authorize_url
   
  end


 def callback()

    client = LinkedIn::Client.new("md21m88fiek1", "aI5cITpDdXGCXBwq")
    #@linkedin=Linkedin.new
    if session[:atoken].nil?
      pin = params[:oauth_verifier]
      atoken, asecret = client.authorize_from_request(session[:rtoken], session[:rsecret], pin)
      session[:atoken] = atoken
      session[:asecret] = asecret
    else
      client.authorize_from_access(session[:atoken], session[:asecret])
    end
    @profile = client.profile
   
    @profile_id= client.profile(:fields => [:id]).id
    @location= client.profile(:fields => [:location]).location
    @industry = client.profile(:fields => [:industry])
 end 

end
