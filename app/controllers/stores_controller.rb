class StoresController < ApplicationController
  def show
    @store = Store.find(params[:id])

    store_id = @store.id
    visit_count_by_user_id = Checkin.joins(:store).where(store_id: store_id).group(:user_id).order(user_id: :desc).limit(5).count()
    @ranking = []
    visit_count_by_user_id.each do |count|
      r = {user_id: count[0], user_name: User.find(count[0]).name, count: count[1]}
      @ranking.push(r)
    end

    render json: {store: @store, ranking: @ranking}
  end
end
