class InspirationsController < ApplicationController
  before_action :set_inspiration, only: [:show, :update, :destroy]

  # GET /inspirations
  def index
    @inspirations = Inspiration.all

    render json: @inspirations
  end

  # GET /inspirations/1
  def show
    render json: @inspiration
  end

  # POST /inspirations
  def create
    @inspiration = Inspiration.new(inspiration_params)

    if @inspiration.save
      render json: @inspiration, status: :created, location: @inspiration
    else
      render json: @inspiration.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inspirations/1
  # def update
  #   if @inspiration.update(inspiration_params)
  #     render json: @inspiration
  #   else
  #     render json: @inspiration.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /inspirations/1
  def destroy
    @inspiration.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspiration
      @inspiration = Inspiration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inspiration_params
      params.require(:inspiration).permit(:name, :image, :bio)
    end
end
