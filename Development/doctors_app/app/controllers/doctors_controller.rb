class DoctorsController < ApplicationController

	def index
		@doctors = Doctor.all
	end

	def show
	    set_doctor
    end

	def create
		@doctor = Doctor.new(doctor_params)

		if @doctor.save
			render doctor_path
		end
	end

	def update
		set_doctor
		if @doctor.update(doctor_params)
		@doctor.save 
		redirect_to doctor_path(@doctor)
		end
	end

	def destroy
		set_doctor
		@doctor.destroy
	end



	private

	def set_doctor
		@doctor = Doctor.find(params[:id])
	end



	def doctor_params
		params.require(:doctor).permit(:name, :specialty, :insurance, :gender)
	end

end
