class RachelAndTheKings.Views.PostView extends Backbone.View
  template: JST['backbone/templates/posts/post_template']
  render: =>
    @$el.html @template(@model.toJSON())
    @