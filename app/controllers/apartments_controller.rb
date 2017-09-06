class ApartmentsController < ApplicationController
	before_action :set_range, only: [:index]

	def index
		@apartments = Apartment.all.page(params[:page]).per(25)
  end

	def display
 		@display = Apartment.public_send(grouping_range).order(:price).page(params[:page]).per(25)
  end

  private

	def grouping_range
	 if %w(price_range_1 price_range_2 price_range_3 price_range_4).include? params[:choice]
       params[:choice]
     else
       :price_range_4
     end
	end

	def set_range
		#refactor
		@apartments_3 = Apartment.price_range_3.count
		@apartments_4 = Apartment.price_range_4.count

	end
end
