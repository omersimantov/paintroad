class V1::PaintingsController < ApplicationController
  before_action :set_painting, only: %i[ show update destroy ]

  # GET /paintings
  def index
    # Get all paintings ordered by created_at descending
    @paintings = Painting.order(created_at: :desc)

    render json: @paintings
  end

  # GET /paintings/1
  def show
    render json: @painting
  end

  # POST /paintings
  def create
    @painting = Painting.new(painting_params)

    if @painting.save
      render json: @painting, status: :created, location: v1_painting_url(@painting)
    else
      render json: @painting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /paintings/1
  def update
    if @painting.update(painting_params)
      render json: @painting
    else
      render json: @painting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /paintings/1
  def destroy
    @painting.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_painting
      @painting = Painting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def painting_params
      params.require(:painting).permit(:id, :name, :description, :image_url, :painter, :price, :order_link)
    end
end
