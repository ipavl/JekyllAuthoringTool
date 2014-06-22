class JatController < ApplicationController
  def create
  end

  def save
    @title = params[:title]
    @layout = params[:layout]
    @date = Time.now.inspect
    @content = params[:content]
  end
end
