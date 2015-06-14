class LinksController < ApplicationController
  def show
    @link = Link.find(params[:user_id])
    render :show
  end

  def index
    link = params[:index] || 1
    @links = self.get_page(link)
    render :links
  end

  protected
  def get_page(n)
    page_offset = (n - 1) * 10
    Link.order(written_at: :desc).offset(page_offset).limit(10)
  end


end