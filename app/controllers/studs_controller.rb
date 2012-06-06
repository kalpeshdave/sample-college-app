class StudsController < ApplicationController
	def index
		@studs = Stud.all
	end

	def new
		@stud = Stud.new
	end

	def create
		@stud = Stud.new(params[:stud])
		
		if @stud.save
			redirect_to @stud, notice: 'Student was successfully created.'
		end		
	end

	def edit
		@stud = Stud.find(params[:id])		
	end

	def update
		@stud = Stud.find(params[:id])
		
		if @stud.update_attributes(params[:stud])
			redirect_to @stud, notice: 'Student was successfully updated'
		end
	end

	def destroy
		@stud = Stud.find(params[:id])
		@stud.destroy

		redirect_to studs_path
	end

	def show
		@stud = Stud.find(params[:id])
	end
end
