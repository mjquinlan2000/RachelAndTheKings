class RachelAndTheKings.Views.ItunesView extends Backbone.View
  template: JST['backbone/templates/itunes/itunes_template']

  initialize: =>
    @_getTrackData()

  render: =>

  _getTrackData: =>
    $.ajax
      url: 'http://itunes.apple.com/search?term=rachel+and+the+kings&entity=song&attribute=artistTerm'
      async: false
      jsonpCallback: 'jsonpCallback'
      contentType: 'application/json'
      dataType: 'jsonp'
      success: (json) =>
        @trackData = json.results
        @render()
      error: (e) =>
        console.log e
