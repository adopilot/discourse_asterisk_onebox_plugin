Discourse.Dialect.inlineBetween({
  start: '$$$',
  stop: '$$$',
  
  emitter: function() {
    
		var iframe = document.createElement('iframe');
    iframe.style.display = "none";
    iframe.src = 'https://www.google.com/calendar/embed?src=fekir8nfrb6ibbfqhbp3jtgifo%40group.calendar.google.com&ctz=Europe/Belgrade';
        return iframe;
	
  }
});