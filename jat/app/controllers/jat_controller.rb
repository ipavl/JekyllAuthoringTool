class JatController < ApplicationController
  def create
  end

  def save
    @title = params[:title]
    @layout = params[:layout]
    @date = Time.now.inspect
    @content = params[:content]
    
    @data = @title
    send_data(@data, :filename => "test.md")
  end
end
