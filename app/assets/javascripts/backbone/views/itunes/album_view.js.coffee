class RachelAndTheKings.Views.AlbumView extends Backbone.View
  template: JST['backbone/templates/itunes/album_template']

  initialize: =>
    @views = []

  render: =>
    @$el.html @template(@options)
    @collection.each (model, index) =>
      view = new RachelAndTheKings.Views.TrackView
        model: model

      if index == 0
        view.setElement(@$('.firstRow')).render()
      else
        @$('.tracksContainer').append view.render().el
    @