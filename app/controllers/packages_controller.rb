class PackagesController < ApplicationController

  def create
    @courier = Courier.find(params[:courier_id]) 
    @package = @courier.packages.new(package_params)
    @package.save

    redirect_to @courier
  end

  def show
  end

  def destroy
    @courier = Courier.find(params[:courier_id])
    @package = @courier.packages.find(params[:id])
    @package.destroy
    
    redirect_to couriers_path(@courier)
  end

  private

  def package_params
     params.require(:package).permit(:tracking_number, :delivery_status)  
  end

end

