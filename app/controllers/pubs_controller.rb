class PubsController < ApplicationController
  def index
    @pubs = Pub.all
  end

  def new
    @pub = Pub.new
  end

  def create
    @new_pub = Pub.new(pub_params)
    @new_pub.shop = Shop.find(1)
    @new_pub.save
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private

  def pub_params
    params.require(:pub).permit(:title)
  end
end
