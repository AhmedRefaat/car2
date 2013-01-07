class NcarsController < ApplicationController
  skip_before_filter :authorize, only: [:index, :show]
  # GET /ncars
  # GET /ncars.json
  def index
    @ncars = Ncar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ncars }
    end
  end

  # GET /ncars/1
  # GET /ncars/1.json
  
  def show
    @ncar = Ncar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ncar }
    end
  end

  # GET /ncars/new
  # GET /ncars/new.json
  def new
    @ncar = Ncar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ncar }
    end
  end

  # GET /ncars/1/edit
  def edit
    @ncar = Ncar.find(params[:id])
  end

  # POST /ncars
  # POST /ncars.json
  def create
    @ncar = Ncar.new(params[:ncar])

    respond_to do |format|
      if @ncar.save
        format.html { redirect_to @ncar, notice: 'Ncar was successfully created.' }
        format.json { render json: @ncar, status: :created, location: @ncar }
      else
        format.html { render action: "new" }
        format.json { render json: @ncar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ncars/1
  # PUT /ncars/1.json
  def update
    @ncar = Ncar.find(params[:id])

    respond_to do |format|
      if @ncar.update_attributes(params[:ncar])
        format.html { redirect_to @ncar, notice: 'Ncar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ncar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ncars/1
  # DELETE /ncars/1.json
  def destroy
    @ncar = Ncar.find(params[:id])
    @ncar.destroy

    respond_to do |format|
      format.html { redirect_to ncars_url }
      format.json { head :no_content }
    end
  end
end
