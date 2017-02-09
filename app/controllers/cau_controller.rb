class CauController < ApplicationController

  def index
    if params[:restaurant_id]
      @cau = Restaurant.where('id != ?', params[:restaurant_id]).sample
    elsif params[:pub_id]
      @cau = Pub.where('id != ?', params[:pub_id]).sample
    elsif params[:search]
      @cau = (Pub.search(params[:search]) + Restaurant.search(params[:search])).sample
    else
      @cau = Restaurant.order('RAND()').first
    end
  end

  def autocomplete
    @shop_list = (
      Pub.order(:title).search(params[:term]) +
      Restaurant.order(:title).search(params[:term])
    )
    respond_to do |format|
      format.html
      format.json {
        render json: @shop_list.map(&:title).to_json
      }
    end
  end

  def destroy
    if params[:restaurant_id]
      @cau = Restaurant.find(params[:restaurant_id])
    elsif params[:pub_id]
      @cau = Pub.find(params[:pub_id])
    end
    if @cau.destroy
      flash[:success] = '삭제됨'
    else
      render 'index'
    end
  end

  private

  def find_shop

  end

end
