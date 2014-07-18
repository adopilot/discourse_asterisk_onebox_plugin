Discourse.Dialect.inlineBetween({
  start: '$$$',
  stop: '$$$',
  rawContents: true,
  emitter: function(matches) {
    
		var commitId = matches[1];
        return ['IFRAME', {src: "http://172.16.0.54/vbox-msg/771/INBOX/msg0014.wav" }];
	
  }
});