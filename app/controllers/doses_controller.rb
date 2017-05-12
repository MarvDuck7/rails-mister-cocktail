class DosesController < ApplicationController

  def index
  end

  def create
      @cocktail = Cocktail.find(params)

      if @dose.save
        redirect_to dose_path(@dose)
      else
        render :new
      end
    end

    def destroy
      byebug
    end



private

def dose_params
param.require(:dose).permit(:description, :ingredient_id)
end


end
