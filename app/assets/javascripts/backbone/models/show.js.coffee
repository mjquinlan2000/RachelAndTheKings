class RachelAndTheKings.Models.Show extends Backbone.Model
  paramRoot: 'show'

class RachelAndTheKings.Collections.ShowsCollection extends Backbone.Collection
  model: RachelAndTheKings.Models.Show
  url: '/shows'
