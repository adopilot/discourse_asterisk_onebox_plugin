# name: asterisk-vmail-onebox
# about: This plugin have task to try onbox  imamo one box koliko imamo 
# version: 0.1
# authors: Admir Hodžić
#register_asset "javascripts/adopilot.js", :server_side

Onebox::Engine::WhitelistedGenericOnebox.whitelist.push "google.com"

module Onebox
  module Engine
    class GoogleCalendarOnebox
      include Engine
      matches_regexp /^https?:\/\/(?:www\.)?google\.com\/calendar\/embed\?.+/

      def to_html
        "<iframe src='#{@url}' style='border-width:0' frameborder='0' scrolling='no' width='100%'></iframe>"
      end
    end
  end
end