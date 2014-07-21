# name: asterisk-vmail-onebox
# about: This plugin have task to try onbox  imamo one box koliko imamo 
# version: 0.1
# authors: Admir Hodžić
#register_asset "javascripts/adopilot.js", :server_side

Onebox = Onebox

Onebox::Engine::WhitelistedGenericOnebox.whitelist.push "172.16.0.54"

module Onebox
  module Engine
    class GoogleCalendarOnebox
      include Engine
      REGEX = /http:\/\/asterix\.robot\.ba\/(\d+)\/(\d+)\//
	  matches_regexp REGEX
	  
	  def folder
		@url.match(REGEX)[1]
	  end
	  
	  def msgNum
	    @url.match(REGEX)[2]
	  end
	  
      def to_html		
        "<b>Folder: #{folder} // Msg num: #{msgNum}</b>"
      end
	  
    end
  end
end
