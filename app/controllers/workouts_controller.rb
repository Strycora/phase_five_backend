class WorkoutsController < ApplicationController
  before_action :set_session
  before_action :set_workout, only: [:show, :update, :destroy]
  

  # GET /workouts
  def index
    @workouts = @session.workouts

    render json: @workouts
  end

  # GET /workouts/1
  def show
    render json: @workout
  end

  # POST /workouts
  def create
    @workout = @session.workouts.new(workout_params)

    if @workout.save
      render json: @session
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workouts/1
  # def update
  #   if @workout.update(workout_params)
  #     render json: @workout
  #   else
  #     render json: @workout.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /workouts/1
  def destroy
     @workout.destroy
     render json: @session
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = Workout.find(params[:id])
    end

    def set_session
      @session = Session.find(params[:session_id])
    end

    # Only allow a list of trusted parameters through.
    def workout_params
      params.require(:workout).permit(:name, :sets, :reps, :weight, :session_id)
    end
end
