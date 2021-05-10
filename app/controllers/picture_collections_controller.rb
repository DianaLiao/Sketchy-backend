class PictureCollectionsController < ApplicationController
  before_action :set_picture_collection, only: [:show, :update, :destroy]

  # GET /picture_collections
  def index
    @picture_collections = PictureCollection.all

    render json: @picture_collections
  end

  # GET /picture_collections/1
  def show
    render json: @picture_collection
  end

  # POST /picture_collections
  def create
    @picture_collection = PictureCollection.new(picture_collection_params)

    if @picture_collection.save
      render json: @picture_collection, status: :created, location: @picture_collection
    else
      render json: @picture_collection.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /picture_collections/1
  def update
    if @picture_collection.update(picture_collection_params)
      render json: @picture_collection
    else
      render json: @picture_collection.errors, status: :unprocessable_entity
    end
  end

  # DELETE /picture_collections/1
  def destroy
    @picture_collection.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture_collection
      @picture_collection = PictureCollection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def picture_collection_params
      params.require(:picture_collection).permit(:collection_id, :picture_id)
    end
end
