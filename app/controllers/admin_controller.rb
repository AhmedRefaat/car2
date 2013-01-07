class AdminController < ApplicationController
  def index
    @total_orders = Ocar.count
  end
end
