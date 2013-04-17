class RachelAndTheKings.Models.Post extends Backbone.Model
  paramRoot: 'post'

class RachelAndTheKings.Collections.PostsCollection extends Backbone.Collection
  model: RachelAndTheKings.Models.Post
  url: '/posts'
