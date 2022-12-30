class CarsController < ApplicationController
  def index
      @cars1 = Car.where("p_id < ?", 9).order("p_id")
      @cars2 = Car.where("p_id >= ?", 9).order("p_id")
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

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      redirect_to root_path, notice: 'good'
    else
      render :edit
    end
  end

  private
  def car_params
    params.require(:car).permit(:car_name, :number_plate, :interior, :exterior, :gas, :j_sheet, :c_sheet, :b_sheet, :p_id )
  end
end
