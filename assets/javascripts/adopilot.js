Discourse.Dialect.inlineBetween({
  start: '$$$',
  stop: '$$$',
  rawContents: true,
  emitter: function(contents) {
    var list = Discourse.Dialect.cook(contents, {});
    return ['a', {href: "http://example.jira.com/browse/" + jiraId}, list];
  }
});