class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.name
    store_visit_counts = user.checkins.group(:store_id).count
    @personal_array = []
    store_visit_counts.each do |count|
      personal = {"store_id": count[0], "store_name": Store.find(count[0]).name, "visit_count": count[1]}
      @personal_array.push(personal)
    end
    render json: {array: @personal_array, name: @name}
  end
end
