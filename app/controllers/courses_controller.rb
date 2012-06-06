class CoursesController < ApplicationController
	def index
		@courses = Course.all
	end

	def new
		@course = Course.new
	end

	def create
		@course = Course.new(params[:course])
		
		if @course.save
			redirect_to @course, notice: 'Course was successfully created.'
		end		
	end

	def edit
		@course = Course.find(params[:id])		
	end

	def update
		@course = Course.find(params[:id])
		
		if @course.update_attributes(params[:course])
			redirect_to @course, notice: 'Course was successfully updated'
		end
	end

	def destroy
		@course = Course.find(params[:id])
		@course.destroy

		redirect_to courses_path
	end

	def show
		@course = Course.find(params[:id])
	end
end
