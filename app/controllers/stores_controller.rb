class StoresController < ApplicationController
  def show
    @store = Store.find(params[:id])

    render json: @store
  end
end
