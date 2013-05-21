require 'nokogiri'
require 'open-uri'

class ValuesController < ApplicationController
  # GET /values
  # GET /values.json
  def index
    @values = Value.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @values }
    end
  end

  # GET /values/1
  # GET /values/1.json
  def show
    @value = Value.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @value }
    end
  end

  # GET /values/new
  # GET /values/new.json
  def new
    @value = Value.new
    @value.counter = Counter.find_by_id(params[:counter_id])
    
#    Rails.logger = Logger.new(STDOUT)
#    logger.debug "Person"
    
#    doc = Nokogiri::HTML(open(@value.counter.urlquery))
    
#    doc.search(@value.counter.nokogirisearch).each do |link|
#	str = link.text.delete(Nokogiri::HTML("&nbsp;").text)
#	logger.debug str
#	@value.response = str.to_i
#    end
    
    @value.save
    

    respond_to do |format|
#      format.html # new.html.erb
#	format.html { render site_counter_path(@value.counter, @value.counter.site)}
	format.html { redirect_to site_counter_path(@value.counter.site, @value.counter), notice: 'Value was successfully created.' }
      format.json { render json: @value }
    end
  end

  # GET /values/1/edit
  def edit
    @value = Value.find(params[:id])
  end

  # POST /values
  # POST /values.json
  def create
    @value = Value.new(params[:value])

    respond_to do |format|
      if @value.save
        format.html { redirect_to @value, notice: 'Value was successfully created.' }
        format.json { render json: @value, status: :created, location: @value }
      else
        format.html { render action: "new" }
        format.json { render json: @value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /values/1
  # PUT /values/1.json
  def update
    @value = Value.find(params[:id])

    respond_to do |format|
      if @value.update_attributes(params[:value])
        format.html { redirect_to @value, notice: 'Value was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /values/1
  # DELETE /values/1.json
  def destroy
    @value = Value.find(params[:id])
    @value.destroy

    respond_to do |format|
#      format.html { redirect_to values_url }
#      format.html { redirect_to site_counter_path(@counter.site, @counter), notice: 'Value was successfully deleted.' }
      format.html { redirect_to site_counter_path(@value.counter.site, @value.counter), notice: 'Value was successfully deleted.' }
      format.json { head :no_content }
    end
  end
end
