class MedicationsController < ApplicationController
  def show
    @medication = Medication.find(params[:id])
  end

  def destroy
    medication = Medication.destroy(params[:id])
    redirect_to root_path, notice: "Deleted Medication: #{medication.name}"
  end
end
