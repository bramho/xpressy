class VacancyStepsController < ApplicationController
   include Wicked::Wizard
   steps :pick_modules, :fill_modules

   def show
      @vacancy = Vacancy.find(params[:vacancy_id])
      render_wizard
   end

   def update
      @vacancy = Vacancy.find(params[:vacancy_id])

      @name = params[:vacancy][:name]
      modules_array = {}
      module_hash = {}

      case @name

      when 'contact-gegevens'
         module_hash["name"] = @name
         module_hash["module_horizontal_position"] = params[:vacancy][:module_horizontal_position]
         module_hash["module_vertical_position"] = params[:vacancy][:module_vertical_position]
         module_hash["module_width"] = params[:vacancy][:module_width]
         module_hash["module_height"] = params[:vacancy][:module_height]

         @vacancy.update_attributes(modules_array: module_hash)
      end


      render_wizard @vacancy
   end

end
