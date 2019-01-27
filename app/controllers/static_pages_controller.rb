class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @new_micropost = Micropost.new
      @feed_items = current_user.microposts.paginate(page: params[:page]) 
    end 
  end

  def help
  end

  def about
  end

  def contact
  end
end
