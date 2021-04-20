class PagesController < ApplicationController

    def welcome
        render:welcome
    end

    def customers
        render:customers
    end

    def promotions
        render:promotions
    end
end
