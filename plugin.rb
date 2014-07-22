# name: asterisk-vmail-onebox
# about: This plugin have task to try onbox  imamo one box koliko imamo 
# version: 0.1
# authors: Admir Hodžić
#register_asset "javascripts/adopilot.js", :server_side

Onebox = Onebox

Onebox::Engine::WhitelistedGenericOnebox.whitelist.push "vidi.hr"

module Onebox
  module Engine
    class GoogleCalendarOnebox
      include Engine
      REGEX = /http:\/\/vidi\.hr\/(\d+)\/(\d+)\//
	  matches_regexp REGEX
	  
	   def folder
		@url.match(REGEX)[1]
	  end
	  
	  def msgNum
	    @url.match(REGEX)[2]
	  end
	  
      def to_html		
        "<b>#{folder} - #{msgNum}</b>"
      end
	  
	  
    end
  end
end
