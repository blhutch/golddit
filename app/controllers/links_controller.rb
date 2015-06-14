class LinksController < ApplicationController
  def show
    @link = Link.find_by(shortened: params[:shortr])
    redirect_to @link.destination
  end

  def index
    link = params[:page] || 1
    @links = self.get_page(link)
  end

  protected
  def get_page(n)
    page_offset = (n - 1) * 10
    Link.order(written_at: :desc).offset(page_offset).limit(10)
  end


end