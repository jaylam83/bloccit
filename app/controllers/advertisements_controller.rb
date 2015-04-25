class AdvertisementsController < ApplicationController
  def index
    @addys = Advertisement.all
  end

  def show
    @addy = Advertisement.find(params[:id])
  end
end
