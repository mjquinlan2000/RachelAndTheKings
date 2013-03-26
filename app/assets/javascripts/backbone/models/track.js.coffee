class RachelAndTheKings.Models.Track extends Backbone.Model
  defaults:
    isPlaying: false

class RachelAndTheKings.Collections.TracksCollection extends Backbone.Collection
  model: RachelAndTheKings.Models.Track

  comparator: (a, b) =>
    if a.get('trackNumber') > b.get('trackNumber')
      1
    else if a.get('trackNumber') < b.get('trackNumber')
      -1
    else
      0
