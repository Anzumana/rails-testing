class Bids::Profil2Controller < ApplicationController
	def profil2
		@tmp2 = Bid.where(:p2 => true)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bids }
		end
end
