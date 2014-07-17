Discourse.Dialect.inlineBetween({
  start: '$$$',
  stop: '$$$',
  rawContents: true,
  emitter: function(contents) {
    var list = Discourse.Dialect.cook(contents, {});
    return "<iframe src='http://172.16.0.54/vbox-msg/701/INBOX/msg0007.wav' style='border-width:0' frameborder='0' scrolling='no' width='100%'></iframe>"
	
  }
});