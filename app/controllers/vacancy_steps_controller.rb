class VacancyStepsController < ApplicationController
   include Wicked::Wizard
   steps :pick_modules, :fill_modules

   def show
      @vacancy = Vacancy.find(params[:vacancy_id])
      render_wizard
   end

   def update
      @vacancy = Vacancy.find(params[:vacancy_id])

      @vacancy.vacancy_modules.update_attributes(params[:vacancy_modules].permit(:module, :horizontal_position, :vertical_position, :width_size, :hight_size))

      render_wizard @vacancy
   end

end
