# name: asterisk-vmail-onebox
# about: This plugin have task to try onbox  imamo one box koliko imamo 
# version: 0.1
# authors: Admir Hodžić
#register_asset "javascripts/adopilot.js", :server_side

Onebox = Onebox

module Onebox
  module Engine
    class GoogleCalendarOnebox
      include Engine
      matches_regexp /^https?:\/\/(?:www\.)?google\.com\/calendar\/embed\?.+/

      def to_html
        "<audio controls><source src='http://rootserver.rosseaux.net/demoscene/compos/exchipo/02/audio/ogg/27546_Rocco.ogg'><a href='http://rootserver.rosseaux.net/demoscene/compos/exchipo/02/audio/ogg/27546_Rocco.ogg'>http://rootserver.rosseaux.net/demoscene/compos/exchipo/02/audio/ogg/27546_Rocco.ogg</a></audio>"
      end
    end
  end
end

