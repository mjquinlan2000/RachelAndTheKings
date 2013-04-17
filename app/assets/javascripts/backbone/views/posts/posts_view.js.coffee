class RachelAndTheKings.Views.PostsView extends Backbone.View
  template: JST['backbone/templates/posts/posts_template']

  render: =>
    @$el.html @template()
    for model in @collection.models
      view = new RachelAndTheKings.Views.PostView
        model: model
      # CHANGE THIS
      @$('.componentContent') view.render().el

    @