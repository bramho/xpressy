class ReactionsController < ApplicationController

   def create
      @vacancy = Vacancy.find(params[:vacancy_id])
      @reaction = @vacancy.reactions.create(params[:reaction].permit(:first_name, :last_name, :email, :age, :education, :body, :address, :postal_code, :city, :country))

      redirect_to vacancy_path(@vacancy)
   end

   def destroy
      @vacancy = Vacancy.find(params[:vacancy_id])
      @reaction = @vacancy.reactions.find(params[:id])
      @reaction.destroy

      redirect_to vacancy_path(@vacancy)
   end

end
