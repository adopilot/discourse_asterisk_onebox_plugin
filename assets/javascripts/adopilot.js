Discourse.Dialect.inlineBetween({
  start: '$$$',
  stop: '$$$',
  rawContents: true,
  emitter: function(matches) {
    
		var commitId = matches[1];
		
		var au = new Audio("http://rootserver.rosseaux.net/demoscene/compos/exchipo/02/audio/ogg/27546_Rocco.ogg");

		
		au.controls = true;
		
        return au;
	
  }
});