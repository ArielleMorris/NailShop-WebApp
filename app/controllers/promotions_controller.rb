class PromotionsController < ApplicationController

    def promotions
        @promotions = Promotion.all
        render:promotions
    end

    def new
        @promotions = Promotion.new
        render :new
    end

    def create
        @promotions = Promotion.new(params.require(:promotion).permit(:title, :description, :promo, :expiration))
        if @promotions.save
          flash[:success] = "New promotion added!"
          redirect_to promotions_url
        else
          flash.now[:error] = "Unable to create promotion"
          render :new
        end
      end

    def edit
        @promotions = Promotion.find(params[:id])
        render :edit
    end

    def update
        @promotions = Promotion.find(params[:id])
        if @promotions.update(params.require(:promotions).permit(:title, :description, :promo, :expiration))
          flash[:success] = "Promotion updated!"
          redirect_to promotions_url(@promotion)
        else
          flash.now[:error] = "Unable to update promotion"
          render :edit
        end
      end

end


