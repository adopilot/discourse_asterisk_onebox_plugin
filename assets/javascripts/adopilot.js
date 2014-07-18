Discourse.Dialect.inlineBetween({
  start: '$$$',
  stop: '$$$',
  rawContents: true,
  emitter: function(matches) {
    
		var commitId = matches[1];
        return ['a', {href: "https://bitbucket.org/foo/bar/commits/" + commitId}, "commit "+commitId];
	
  }
});