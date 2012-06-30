class ListingsController < ApplicationController
  # GET /listings
  # GET /listings.json
  before_filter :authenticate_user!
  def index
    @listings = Listing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @listings }
    end
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
    @listing = Listing.find(params[:id])
    @comment = Comment.new(:listing =>@listing)
    @tags = Listing.tag_counts_on(:tags)
    @search  = @listing.location_address
    @search_listing = Listing.find_by_sql("select title from listings where location_address = '#{@search}'")

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @listing }
    end
  end

  # GET /listings/new
  # GET /listings/new.json
  def new
    @listing = Listing.new
    @values = Value.find(:all)
    #respond_to do |format|
    #  format.html # new.html.erb
    #  format.json { render json: @listing }
    #end
  end

  # GET /listings/1/edit
  def edit
   @puts = Listing.find(params[:id]).user_id
     if @puts ==current_user.id
    @listing = Listing.find(params[:id])
    @values = Value.all
     else 
      redirect_to listings_path, :notice =>"no suffiecient privilage"
     end
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(params[:listing])
    @values = Value.all

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render json: @listing, status: :created, location: @listing }
      else
        format.html { render action: "new" }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /listings/1
  # PUT /listings/1.json
  def update
    @listing = Listing.find(params[:id])

    respond_to do |format|
      if @listing.update_attributes(params[:listing])
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy

    respond_to do |format|
      format.html { redirect_to listings_url }
      format.json { head :no_content }
    end
  end
end
