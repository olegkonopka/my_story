class PagesController < ApplicationController
  def home
  end

  def index
  end

  def profile
  	@posts=Post.all
  end

  def about
  end
end
