class CarsController < ApplicationController
  def index
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to root_path, notice: 'nice'
    else
      render :new
    end
  end

private
  def car_params
    params.permit(:car_name, :number_plate, :interior, :exterior, :gas, :j_sheet, :c_sheet, :b_sheet)
  end
end
