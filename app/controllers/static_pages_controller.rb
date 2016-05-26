class StaticPagesController < ApplicationController
  def home
   if current_user   
   @micropost = current_user.microposts.build if logged_in? 
   @feed_items = current_user.feed.paginate(page: params[:page])
   else 
   end
  end

  def help
  end
  def about
  end  
  def contact
  end  
end
