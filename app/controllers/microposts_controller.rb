class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:index, :show, :create, :destroy]
  before_action :correct_user,   only: :destroy

  #Filters the microposts based on whether they contain the selected tag
  def index
    @microposts = current_user.microposts
    @microposts = @microposts.tagged_with(params[:tag]) if params[:tag]
    @microposts = @microposts.paginate(page: params[:page])
  end
  
  def show
    @micropost = Micropost.find(params[:id])
  end

  
  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @micropost.destroy
    flash[:success] = "You have deleted a task!"
    redirect_to request.referrer || root_url
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content, :tag_list, :tag, 
        {tag_ids: [] }, :tag_ids)
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end
