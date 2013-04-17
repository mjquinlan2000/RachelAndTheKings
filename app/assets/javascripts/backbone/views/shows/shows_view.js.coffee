class RachelAndTheKings.Views.ShowsView extends Backbone.View
  template: JST['backbone/templates/shows/shows_template']

  initialize: =>
    @listenTo @collection, 'reset', @render

  render: =>
    @$el.empty()
    @$el.append @template()
    for model in @collection.models
      view = new RachelAndTheKings.Views.ShowView
        model: model
      @$('.componentContent').append view.render().el

    @