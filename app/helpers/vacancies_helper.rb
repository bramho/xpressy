module VacanciesHelper
   def calculateDistance(reaction, locationId)
      return (reaction.distance_to(Location.find(locationId)) * 1.6).round(2)
   end
end
