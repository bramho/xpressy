class VacancyModulesController < ApplicationController
   def create
      @vacancy = Vacancy.find(params[:vacancy_id])
      @vacancyModule = @vacancy.vacancy_modules.create(params[:vacancy_module].permit(:module, :horizontal_position, :vertical_position, :width_size, :hight_size))

      redirect_to vacancy_path(@vacancy)
   end

   def destroy
      @vacancy = Vacancy.find(params[:vacancy_id])
      @VacancyModule = @vacancy.vacancy_modules.find(params[:id])
      @vacancyModule.destroy

      redirect_to vacancy_path(@vacancy)
   end
end
