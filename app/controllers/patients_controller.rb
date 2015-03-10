class PatientsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
  end

  def destroy
    patient = Patient.destroy(params[:id])
    redirect_to root_path, notice: "Deleted Patient: #{patient.full_name}"
  end
end
