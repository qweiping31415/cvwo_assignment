class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      #@micropost  = current_user.index, not a controller instance so no index
      #@micropost_controller = Micropost.new
      @feed_items = current_user.feed.paginate(page: params[:page])
    end #just like how tags is a model method of task, feed is model method of user login
    #microposts is pluralised method ... but build seems weird
    #oh is it the model methods can access Controller actions
  end

  def help
  end

  def about
  end

  def contact
  end
end
