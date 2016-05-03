class MyurlsController < ApplicationController
before_action :set_review, only: [:show]
  def index
    @myurls = Myurl.all
  end

  def show
  redirect_to  @myurl.togo
  end

  def new
    @myurl = Myurl.new
  end

  def create
    @myurl = Myurl.create(myurl_params)
    redirect_to myurls_path
  end

 private

  def set_review
    @myurl = Myurl.find(params[:id])
  end

  def myurl_params
      params.require(:myurl).permit(:name, :togo)
    end

end
