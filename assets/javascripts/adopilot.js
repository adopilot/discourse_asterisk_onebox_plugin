Discourse.Dialect.inlineBetween({
  start: '$$$',
  stop: '$$$',
  rawContents: true,
  emitter: function(matches) {
    
		
		var aud = new Audio();
		aud.src = 'http://rootserver.rosseaux.net/demoscene/compos/exchipo/02/audio/ogg/27546_Rocco.ogg';
 
		aud.controls = true;
		aud.play();
		
		
        return aud;
	
  }
});