# name: asterisk-vmail-onebox
# about: This plugin have task to try onbox  imamo one box koliko imamo 
# version: 0.1
# authors: Admir Hodžić
#register_asset "javascripts/adopilot.js", :server_side

module Onebox
  module Engine
    class AdoAudioOnebox
      include Engine
	  
	

    matches_regexp [\$][\$][\$]

      def to_html
        "<audio controls><source src='http://172.16.0.54/vbox-msg/701/INBOX/msg0010.wav'><a href='http://172.16.0.54/vbox-msg/701/INBOX/msg0010.wav'>http://172.16.0.54/vbox-msg/701/INBOX/msg0010.wav</a></audio>"
      end
    end
  end
end