class SoldoutsController < ApplicationController
  # GET /soldouts
  # GET /soldouts.json
  def index
    @soldouts = Soldout.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @soldouts }
    end
  end

  # GET /soldouts/1
  # GET /soldouts/1.json
  def show
    @soldout = Soldout.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @soldout }
    end
  end

  # GET /soldouts/new
  # GET /soldouts/new.json
  def new
    @soldout = Soldout.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @soldout }
    end
  end

  
  # POST /soldouts
  # POST /soldouts.json
  def create
    if user_signed_in?
    @soldout = Soldout.new(params[:soldout])
    @soldout.customer_email = current_user.email
    else
      @soldout = Soldout.new(params[:soldout])
    end
    respond_to do |format|
      if @soldout.save
        format.html { redirect_to deals_path, :notice => 'Your deal was successfully done.' }
        format.json { render json: @soldout, status: :created, location: @soldout }
      else
        format.html { render action: "new" }
        format.json { render json: @soldout.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /soldouts/1
  # DELETE /soldouts/1.json
  def destroy
    @soldout = Soldout.find(params[:id])
    @soldout.destroy

    respond_to do |format|
      format.html { redirect_to soldouts_url }
      format.json { head :no_content }
    end
  end
end
