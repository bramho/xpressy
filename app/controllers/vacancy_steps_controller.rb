class VacancyStepsController < ApplicationController
   include Wicked::Wizard
   steps :pick_modules, :fill_modules

   def show
      @vacancy = Vacancy.find(params[:vacancy_id])
      render_wizard
   end

   def update
      @vacancy = Vacancy.find(params[:vacancy_id])

      @name = params[:name]
      module_hash = Hash.new

      case @name

      when 'contact-gegevens'
         module_hash["name"] = @name
         module_hash["vertical_position"] = params[:module_vertical_position]
         module_hash["horizontal_position"] = params[:module_horizontal_position]
         module_hash["width"] = params[:module_width]
         module_hash["height"] = params[:module_height]
      end

      @vacancy.update_attributes(params[:vacancy].permit(:modules_array => module_hash))

      render_wizard @vacancy
   end

end
