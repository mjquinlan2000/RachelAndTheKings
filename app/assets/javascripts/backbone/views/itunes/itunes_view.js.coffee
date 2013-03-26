class RachelAndTheKings.Views.ItunesView extends Backbone.View
  template: JST['backbone/templates/itunes/itunes_template']

  render: =>
    @_getTrackData()

  _getTrackData: =>
    $.ajax
      url: 'http://itunes.apple.com/search?term=rachel+and+the+kings&entity=song&attribute=artistTerm'
      async: false
      jsonpCallback: 'jsonpCallback'
      contentType: 'application/json'
      dataType: 'jsonp'
      success: (json) =>
        @trackData = json.results
        @_displayResults()
      error: (e) =>
        console.log e

  _displayResults: =>
    @$el.empty()
    tracks_by_album = _.groupBy @trackData, 'collectionName'
    _.each tracks_by_album, (album, title) =>
      trackCollection = new RachelAndTheKings.Collections.TracksCollection album
      albumView = new RachelAndTheKings.Views.AlbumView
        collection: trackCollection
        albumName: title
        artworkUrl: trackCollection.at(0).get('artworkUrl100')
        collectionUrl: trackCollection.at(0).get('collectionViewUrl')
        collectionPrice: "$#{trackCollection.at(0).get('collectionPrice')}"
      @$el.append albumView.render().el