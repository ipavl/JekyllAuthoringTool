class JatController < ApplicationController
    def create
    end

    def save
        time = Time.now
    
        @title = params[:title]
        @layout = params[:layout]
        @permalink = params[:permalink]
        @date = time.inspect
        @content = params[:content]
     
        # format the title as lowercase with hyphens instead of spaces for the file name
        @ftitle = @title.downcase.tr(" ", "-")
     
        # prepare the file name in the format "YYYY-MM-DD-hyphenated-title.md" with leading zeroes for single-digit months/days
        @filename = time.year.to_s + "-" + time.month.to_s.rjust(2, "0") + "-" + time.day.to_s.rjust(2, "0") + "-" + @ftitle + ".md"
        
        # create the file's content
        @data = "---\n" \
                + "layout: " + @layout + "\n" \
                + "title: " + @title + "\n" \
                + "permalink: " + @permalink + "\n" \
                + "date: " + @date + "\n" \
                + "---\n\n" \
                + @content
        
        # send the data to the user as a file download
        send_data(@data, :filename => @filename)
    end
end
