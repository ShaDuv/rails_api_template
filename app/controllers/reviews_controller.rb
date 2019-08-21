class ReviewsController < ApplicationController
  def index
      @place = Place.find(params[:place_id])
      @reviews = @place.reviews
      json_response(@reviews)
    end

    def create
      @place = Place.find(params[:place_id])
      @review = @place.reviews.create!(review_params)
      json_response(@review, :created)
    end

    def show
      @place = Place.find(params[:place_id])
      @review = @place.reviews.find(params[:id])
      json_response(@review)
    end

    def update
      @place = Place.find(params[:place_id])
      @review = @place.reviews.find(params[:id])
      if @review.update!(review_params)
        render status: :ok, json: {
          message: "This review has been successfully updated!"
        }
      end
    end

    def destroy
      @place = Place.find(params[:place_id])
      @review = @place.reviews.find(params[:id])
      if @review.destroy!
        render status: :ok, json: {
          message: "This review has been successfully destroyed!"
        }
      end
    end

    private
      def review_params
        params.permit(:user_name, :headline, :body, :rating)
      end
end
