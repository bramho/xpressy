class ReactionController < ApplicationController

   def create
      @vacancy = Vacancy.find(params[:vacancy_id])
      @reaction = @vacancy.reactions.create(params[:reaction].permit(:name, :body))

      redirect_to vacancy_path(@vacancy)
   end

end
