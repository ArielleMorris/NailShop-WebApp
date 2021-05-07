class PromotionsController < ApplicationController

  before_action :authenticate_user!

    def promotions
        @promotions = Promotion.all
        render:promotions
    end

    def new
        @promotions = Promotion.new
        if current_user.nil?
          redirect_to promotions_url, :flash => {:error => "You do not have access to this page"}
        elsif current_user.manager_role?
          render :new
        else 
          redirect_to promotions_url, :flash => {:error => "You do not have access to this page"}
        end
    end


    def create
        @promotions = Promotion.new(params.require(:promotion).permit(:Title, :discount_flat, :discount_percent, :promo_code, :service_id))
        if @promotions.save
          flash[:success] = "New promotion added!"
          redirect_to managerhome_url
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


  def destroy
    @promotions = Promotion.find(params[:id])
    @promotion.destroy
    flash[:success] = "The promotion was successfully destroyed."
    redirect_to promotions_url
  end

end


