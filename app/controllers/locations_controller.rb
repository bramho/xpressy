class LocationsController < ApplicationController
   before_action :find_company, only: [:new, :create, :edit, :update]

   def index
      @locations = Location.all
   end

   def new
      @location = Location.new
   end

   def create
      # @location = Location.new(location_params)
      @location = @company.locations.create(location_params)

      if @location.save
         redirect_to @company
      else
         render 'new'
      end
   end

   def show
      @location = Location.find(params[:id])
   end

   def edit
      @location = Location.find(params[:id])
   end

   def update
      @location = Location.find(params[:id])

      if @location.update(params[:location].permit(:name, :address, :postal_code, :city, :country))
         redirect_to @company
      else
         render 'edit'
      end
   end

   def destroy
      @location = Location.find(params[:id])
      @location.destroy

      redirect_to root_path
   end

   private
      def location_params
         params.require(:location).permit(:name, :address, :postal_code, :city, :country, :company_id)
      end

      def find_company
         @company = Company.find(params[:company_id])
      end
end
