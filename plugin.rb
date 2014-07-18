# name: asterisk-vmail-onebox
# about: This plugin have task to try onbox  imamo one box koliko imamo 
# version: 0.1
# authors: Admir Hodžić

# register_asset "javascripts/adopilot.js", :server_side

module Onebox
  module Engine
    class AdoAudioOnebox
      include Engine
	  
	re1='.*?'	# Non-greedy match on filler
	re2='(?:Jan(?:uary)?|Feb(?:ruary)?|Mar(?:ch)?|Apr(?:il)?|May|Jun(?:e)?|Jul(?:y)?|Aug(?:ust)?|Sep(?:tember)?|Sept|Oct(?:ober)?|Nov(?:ember)?|Dec(?:ember)?)'	# Uninteresting: month
	re3='.*?'	# Non-greedy match on filler
	re4='((?:Jan(?:uary)?|Feb(?:ruary)?|Mar(?:ch)?|Apr(?:il)?|May|Jun(?:e)?|Jul(?:y)?|Aug(?:ust)?|Sep(?:tember)?|Sept|Oct(?:ober)?|Nov(?:ember)?|Dec(?:ember)?))'	# Month 1
	re5='.*?'	# Non-greedy match on filler
	re6='(\\$[0-9]+(?:\\.[0-9][0-9])?)(?![\\d])'	# Dollar Amount 1

	re=(re1+re2+re3+re4+re5+re6)

      matches_regexp Regexp.new(re,Regexp::IGNORECASE);

      def to_html
        "<audio controls><source src='http://172.16.0.54/vbox-msg/701/INBOX/msg0010.wav'><a href='http://172.16.0.54/vbox-msg/701/INBOX/msg0010.wav'>http://172.16.0.54/vbox-msg/701/INBOX/msg0010.wav</a></audio>"
      end
    end
  end
end