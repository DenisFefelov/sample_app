class StaticPagesController  < ApplicationController
  
  def home
    if signed_in?
      begin  
        @micropost  = current_user.microposts.build
      rescue  
        puts "Error #{$!}"
      ensure   
        @feed_items = current_user.feed.paginate(page: params[:page])
      end
    end
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end
  
  def help
    @title = "Help"
  end
end
