class CauController < ApplicationController

  def index
    if params[:restaurant_id]
      @cau = Restaurant.where('id != ?', params[:restaurant_id]).sample
    elsif params[:pub_id]
      @cau = Pub.where('id != ?', params[:pub_id]).sample
    else
      @cau = Restaurant.order('RANDOM()').first
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

end
