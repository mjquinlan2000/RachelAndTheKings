class RachelAndTheKings.Views.ShowView extends Backbone.View
  template: JST['backbone/templates/shows/show_template']

  render: =>
    @$el.html @template(@model.toJSON())
    @