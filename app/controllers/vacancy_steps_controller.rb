class VacancyStepsController < ApplicationController
   include Wicked::Wizard
   steps :pick_modules, :fill_modules

   def show
      @vacancy = Vacancy.find(params[:vacancy_id])
      render_wizard
   end

   def update
      @vacancy = Vacancy.find(params[:vacancy_id])

      @contact_gegevens = params[:vacancy][:contact_fields_name]
      @social_media = params[:vacancy][:social_media_name]

      modules_array = {}
      module_hash = {}

      if @contact_gegevens
         module_hash["contact_gegevens"] = @contact_gegevens
         module_hash["contact_gegevens_horizontal_position"] = params[:vacancy][:contact_fields_horizontal_position]
         module_hash["contact_gegevens_vertical_position"] = params[:vacancy][:contact_fields_vertical_position]
         module_hash["contact-gegevens_width"] = params[:vacancy][:contact_fields_width]
         module_hash["contact_gegevens_height"] = params[:vacancy][:contact_fields_height]
      end

      if @social_media
         module_hash["social_media"] = @social_media
         module_hash["social_media_horizontal_position"] = params[:vacancy][:social_media_horizontal_position]
         module_hash["social_media_vertical_position"] = params[:vacancy][:social_media_vertical_position]
         module_hash["social_media_width"] = params[:vacancy][:social_media_width]
         module_hash["social_media_height"] = params[:vacancy][:social_media_height]
      end

      @vacancy.update_attributes(modules_array: module_hash)

      render_wizard @vacancy
   end

end
