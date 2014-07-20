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
	  
      matches_regexp /\d+\$\$\$
	  
	  ado = String.new(@url)
	  
	  ado1 ="msg"+ado[0, ado.length - 3].rjust(4, '0')
	  
	  
      def to_html
        "<audio controls><source src='http://172.16.0.54/vbox-msg/771/INBOX/'#{ado1}'.wav'><a href='http://172.16.0.54/vbox-msg/771/INBOX/'#{ado1}'.wav'>http://172.16.0.54/vbox-msg/771/INBOX/'#{ado1}'.wav</a></audio>"
      end
    end
  end
end

