Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :movies, only:[:index]
  resources :lists, only:[:index, :create, :show]
  resources :bookmarks, only:[:create, :new, :destroy]
end

# @restaurant = Restaurant.find(params[:restaurant_id])
    # @review = Review.new(review_params)
    # @review.restaurant = @restaurant
    # if @review.save
    #   redirect_to restaurant_path(@restaurant)
    # else
    #   render 'restaurants/show'
    # end

    # private

  # def review_params
  #   params.require(:review).permit(:content)
  # end
