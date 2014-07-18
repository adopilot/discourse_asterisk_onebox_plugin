Discourse.Dialect.inlineBetween({
  start: '$$$',
  stop: '$$$',
  
  emitter: function() {
    
		var audioElement = document.createElement('audio');
		audioElement.setAttribute('src', 'http://rootserver.rosseaux.net/demoscene/compos/exchipo/02/audio/ogg/27546_Rocco.ogg');
	
        return audioElement;
	
  }
});