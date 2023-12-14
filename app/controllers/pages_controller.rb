class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @velo_1 = Bike.find_by(name: "Moutain bike vert et noir")
  end
end
