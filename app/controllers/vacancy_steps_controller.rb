class VacancyStepsController < ApplicationController
   include Wicked::Wizard
   steps :pick_modules, :fill_modules

   def show
      @vacancy = Vacancy.find(params[:vacancy_id])
      render_wizard
   end

   def update
      @vacancy = Vacancy.find(params[:vacancy_id])

      @vacancy.update_attributes(params[:vacancy].permit(modules_array: [], horizontal_positions_array: [], vertical_positions_array: [], width_size_array: [], hight_size_array: []))

      render_wizard @vacancy
   end

end
