class PagesController < ApplicationController

    def Welcome
        render:welcome
    end

    def customers
        render:customers
    end

    def promotions
        render:promotions
    end

    def review
        render:review
    end


end
