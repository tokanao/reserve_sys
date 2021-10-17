class Api::CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /api/courses
  # def index
  #   @courses = Course.all
  # end

  # GET /api/courses/1
  def show
  end

  # GET /api/courses/new
  # def new
  #   @course = Course.new
  # end

  # GET /api/courses/1/edit
  # def edit
  # end

  # POST /api/courses
  # def create
  #   @course = Course.new(course_params)
  #
  #   if @course.save
  #     redirect_to @course, notice: 'Course was successfully created.'
  #   else
  #     render :new
  #   end
  # end

  # PATCH/PUT /api/courses/1
  # def update
  #   if @course.update(course_params)
  #     redirect_to @course, notice: 'Course was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  # DELETE /api/courses/1
  # def destroy
  #   @course.destroy
  #   redirect_to api_courses_url, notice: 'Course was successfully destroyed.'
  # end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_course
    @course = Course.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def course_params
    params.require(:course).permit(model_class.param_names)
  end
end
