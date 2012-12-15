class ProfilesController < ApplicationController
  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
    @ids = []
    @profiles.each do |p|
      @ids << p.user_id
    end
    if @ids.include?(current_user.id)
      @profile = Profile.find_by_user_id(current_user.id)
    end
 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profiles }
    end
  end



  # GET /profiles/new
  # GET /profiles/new.json
  def new
    @profile = Profile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profile }
    end
  end

  # GET /profiles/1/edit
  def edit
    @profile = Profile.find(params[:id])
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(params[:profile])
    @profile.user_id = current_user.id
    respond_to do |format|
      if @profile.save
        format.html { redirect_to profiles_path, notice: 'Profile was successfully created.' }
        format.json { render json: @profile, status: :created, location: @profile }
      else
        format.html { render action: "new" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /profiles/1
  # PUT /profiles/1.json
  def update
    @profile = Profile.find(params[:id])

    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        format.html { redirect_to profiles_path, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy

    respond_to do |format|
      format.html { redirect_to profiles_url }
      format.json { head :no_content }
    end
  end



  def linkedin_index
    client = LinkedIn::Client.new( "9r6msauxrjxk", "tbPMfG9PVD2zAfZc")

    request_token = client.request_token(:oauth_callback =>"http://#{request.host_with_port}/profiles/linkedin_callback", :user_id => current_user.id)
    session[:rtoken] = request_token.token
    session[:rsecret] = request_token.secret

    redirect_to client.request_token.authorize_url

  end



  def linkedin_callback()
    client = LinkedIn::Client.new("9r6msauxrjxk", "tbPMfG9PVD2zAfZc")

    if session[:atoken].nil?
      pin = params[:oauth_verifier]
      atoken, asecret = client.authorize_from_request(session[:rtoken], session[:rsecret], pin)
      session[:atoken] = atoken
      session[:asecret] = asecret
    else
      client.authorize_from_access(session[:atoken], session[:asecret])
    end
    @data = client.profile
  #  @phone_number = client.profile(:fields => [:phone_numbers]).phone_numbers.all.blank? ? "" : client.profile(:fields => [:phone_numbers]).phone_numbers.all.first.phone_number
    @profile = Profile.new
    @profile.user_id = current_user.id
    @profile.first_name = @data.first_name
    @profile.last_name = @data.last_name
    @profile.headline = @data.headline
    #@profile.phone = @phone_number.blank? ? "" : @phone_number
    @profile.designation = @data.headline
    if @profile.save
      redirect_to profiles_path
    end


  end


end
