# name: asterisk-vmail-onebox
# about: This plugin have task to try onbox  imamo one box koliko imamo 
# version: 0.1
# authors: Admir Hodžić
#register_asset "javascripts/adopilot.js", :server_side

Onebox = Onebox

Onebox::Engine::WhitelistedGenericOnebox.whitelist.push "172.16.0.54"

module Onebox
  module Engine
    class FooBarOnebox
      include Engine
	  
	   matches_regexp /!!!(\d+)!!!/
	  
      def to_html
        "<b>#{@url}</b>"
      end
    end
  end
end

