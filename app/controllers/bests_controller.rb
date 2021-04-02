class BestsController < ApplicationController
  before_action :set_best, only: [:show, :update, :destroy]

  # GET /bests
  def index
    @bests = Best.all

    render json: @bests
  end

  # GET /bests/1
  def show
    render json: @best
  end

  # POST /bests
  def create
    @best = Best.new(best_params)

    if @best.save
      render json: @best, status: :created, location: @best
    else
      render json: @best.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bests/1
  def update
    if @best.update(best_params)
      render json: @best
    else
      render json: @best.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bests/1
  def destroy
    @best.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_best
      @best = Best.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def best_params
      params.require(:best).permit(:name, :weight, :reps)
    end
end
