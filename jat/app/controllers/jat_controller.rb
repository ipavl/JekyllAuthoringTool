class JatController < ApplicationController
  def create
  end

  def save
    time = Time.now
  
    @title = params[:title]
    @layout = params[:layout]
    @date = time.inspect
    @content = params[:content]
   
    # format the title as lowercase with hyphens instead of spaces for the file name
    @ftitle = @title.downcase.tr(" ", "-")
   
    # prepare the file name in the format "YYYY-MM-DD-hyphenated-title.md" with leading zeroes for single-digit months/days
    @filename = time.year.to_s + "-" + time.month.to_s.rjust(2, "0") + "-" + time.day.to_s.rjust(2, "0") + "-" + @ftitle + ".md"
    
    @data = @title
    send_data(@data, :filename => @filename)
  end
end
