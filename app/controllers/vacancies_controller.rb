class VacanciesController < ApplicationController
   before_action :authenticate_user!, except: [:index, :show]

   def index
      @vacancies = Vacancy.all.order('created_at DESC')

      respond_to do |format|
         format.html
         format.json { render :json => @vacancies }
      end
   end

   def new
      @vacancy = Vacancy.new
   end

   def create
      @vacancy = Vacancy.new(vacancy_params)

      if @vacancy.save
         redirect_to @vacancy
      else
         render 'new'
      end
   end

   def show
      @vacancy = Vacancy.find(params[:id])

      respond_to do |format|
         format.html
         format.json { render :json => @vacancy }
      end
   end

   def edit
      @vacancy = Vacancy.find(params[:id])
   end

   def update
      @vacancy = Vacancy.find(params[:id])

      if @vacancy.update(params[:vacancy].permit(:title, :description, :demands, :branche, :education_level, :experience, :location))
         redirect_to @vacancy
      else
         render 'edit'
      end
   end

   def destroy
      @vacancy = Vacancy.find(params[:id])
      @vacancy.destroy

      redirect_to root_path
   end

   private
      def vacancy_params
         params.require(:vacancy).permit(:title, :description, :demands, :branche, :education_level, :experience, :location)
      end

end
