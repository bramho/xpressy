class CompaniesController < ApplicationController

   def index
      @companies = Company.all.includes(:locations)
   end

   def new
      if (Company.exists?)
         flash[:notice] = 'There is already a company defined, you can edit this company.'
         redirect_to companies_path
      else
         @company = Company.new
      end
   end

   def create
      @company = Company.new(company_params)

      if @company.save
         redirect_to @company
      else
         render 'new'
      end
   end

   def show
      @company = find_company
   end

   def edit
      @company = find_company
   end

   def update
      @company = find_company

      if @company.update(params[:company].permit(:name, :description, :address, :postal_code, :city))
         redirect_to @company
      else
         render 'edit'
      end
   end

   def destroy
      @company = find_company
      @company.destroy

      flash[:notice] = 'The company has succesfully been destoyed.'
      redirect_to root_path
   end

   private
      def company_params
         params.require(:company).permit(:name, :description, :address, :postal_code, :city)
      end

      def find_company
         Company.find(params[:id])
      end
end
