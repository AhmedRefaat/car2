class SearchController < ApplicationController
  #@selected = ""
  @@all_models = ["All"]
  def find
    @cmodel = []
    @oems = []
    @all_cars = Ocar.all
    @all_cars.each do |f|
      if !@oems.include?(f.oem)
        @oems = @oems + [f.oem]
      end
    end
    
  end

  def show
    p params[:selected]
    p params[:car_model] 
    p ">>>>>>>>>>>>>>>>>>>>>>>>>>>"
    @cmodel = []
    @cmodel = @cmodel +[params[:car_model]] 
    @ocars = []
    if !params[:selected].nil?
      
      @ocars = Ocar.where(:oem => params[:selected])
      @ocars.each do |f|
        if !@cmodel.include?(f.cmodel)
          @cmodel = @cmodel + [f.cmodel]
        end
        @@all_models = @cmodel
      end
    end
    if params[:selected].nil?
      @ocars = []
      p @@all_models 
      p "++++++++++++++++++++++++++++++++++++++++++"
      @ocars = Ocar.where(:cmodel => @cmodel)
      @related_oem = @ocars[0].oem
      @cmodel = []
      @cars =  Ocar.where(:oem => @related_oem)
      @cars.each do |f|
        if !@cmodel.include?(f.cmodel)
          @cmodel = @cmodel + [f.cmodel]
        end
      end
    end
    
    

  end
end
