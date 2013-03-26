class RachelAndTheKings.Views.AlbumView extends Backbone.View
  template: JST['backbone/templates/itunes/album_template']

  initialize: =>
    @views = []

  render: =>
    @$el.html @template(@options)
    @collection.each (model) =>
      view = new RachelAndTheKings.Views.TrackView
        model: model
      @$('.tracksContainer').append view.render().el
    @