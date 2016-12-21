class VacanciesController < ApplicationController
   # before_action :authenticate_user!, except: [:index, :show]
   before_action :authenticate_user!

   def index
      @vacancies = Vacancy.all

      if params[:search]
         @vacancies = Vacancy.search(params[:search]).order('online DESC', 'created_at DESC')
      else
         @vacancies = Vacancy.all.order('online DESC', 'created_at DESC')
      end

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
         # redirect_to @vacancy
         redirect_to vacancy_vacancy_steps_path(@vacancy)
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

      if @vacancy.update(params[:vacancy].permit(:title, :description, :demands, :branche, :education_level, :experience, :location_id, :modules_array, :positions_array, social_media_modules_attributes: [:id, :social_media_type, :social_media_value]))
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
         params.require(:vacancy).permit(:title, :description, :demands, :branche, :education_level, :experience, :location_id, :modules_array, :positions_array, social_media_modules_attributes: [:id, :social_media_type, :social_media_value])
      end

end
