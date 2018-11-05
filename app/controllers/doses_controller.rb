class DosesController < ApplicationController
  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params["cocktail_id"])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

    def destroy
      @dose = Dose.find(params["id"])
      @dose.destroy
      redirect_to cocktail_path(params['cocktail_id'])
    end

  private

  # def set_dose

  # end

  def dose_params
    params.require(:dose).permit(:ingredient_id, :description)
  end
end
