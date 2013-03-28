class RachelAndTheKings.Views.TopspinView extends Backbone.View
  template: JST['backbone/templates/topspin/topspin_template']

  render: =>
    @$el.html @template()
    @
