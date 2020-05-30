class DosesController < ApplicationController
  def create
    @dose = Dose.new(doses_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    @dose.save

    redirect_to cocktail_path(@cocktail)
  end

  private
  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
