class RachelAndTheKings.Views.TwitterView extends Backbone.View
  template: JST['backbone/templates/twitter/twitter_template']

  render: =>
    @$el.html @template()