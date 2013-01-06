class OcarsController < ApplicationController
  # GET /ocars
  # GET /ocars.json
  def index
    @ocars = Ocar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ocars }
    end
  end

  # GET /ocars/1
  # GET /ocars/1.json
  def show
    @ocar = Ocar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ocar }
    end
  end

  # GET /ocars/new
  # GET /ocars/new.json
  def new
    @ocar = Ocar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ocar }
    end
  end

  # GET /ocars/1/edit
  def edit
    @ocar = Ocar.find(params[:id])
  end

  # POST /ocars
  # POST /ocars.json
  def create
    @ocar = Ocar.new(params[:ocar])

    respond_to do |format|
      if @ocar.save
        format.html { redirect_to @ocar, notice: 'Ocar was successfully created.' }
        format.json { render json: @ocar, status: :created, location: @ocar }
      else
        format.html { render action: "new" }
        format.json { render json: @ocar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ocars/1
  # PUT /ocars/1.json
  def update
    @ocar = Ocar.find(params[:id])

    respond_to do |format|
      if @ocar.update_attributes(params[:ocar])
        format.html { redirect_to @ocar, notice: 'Ocar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ocar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ocars/1
  # DELETE /ocars/1.json
  def destroy
    @ocar = Ocar.find(params[:id])
    @ocar.destroy

    respond_to do |format|
      format.html { redirect_to ocars_url }
      format.json { head :no_content }
    end
  end
end
