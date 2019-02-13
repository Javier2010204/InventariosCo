class BrandsSuggestionController < ApplicationController
   
    def index
       if params[:query].present?
        query = params[:query]
        condition = "unnacent(lower(name)) LIKE '#{I18n.transliterate(query.downcase)}'"
        @brands = Brand.where(condition)
       else
        @brands ||= Brand.none
        render json: @brands
       end
    end
    
end