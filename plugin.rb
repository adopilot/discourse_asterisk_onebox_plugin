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
	  
	   def folderPath
		@url.match(REGEX)[1]
	  end
	  
	  def msgNum
	    @url.match(REGEX)[2]
	  end
	  
      def to_html		
         "<audio controls><source src='http://172.16.0.54/vbox-msg/'#{folderPath}'/INBOX/msg000'#{msgNum}'.wav'><a href='http://172.16.0.54/vbox-msg/'#{folderPath}'/INBOX/msg000'#{msgNum}'.wav'>http://172.16.0.54/vbox-msg/'#{folderPath}'/INBOX/msg000'#{msgNum}'.wav</a></audio>"
      end
	  
	  
    end
  end
end
