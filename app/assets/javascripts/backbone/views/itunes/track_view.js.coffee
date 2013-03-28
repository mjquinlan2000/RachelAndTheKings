class RachelAndTheKings.Views.TrackView extends Backbone.View
  template: JST['backbone/templates/itunes/track_template']

  tagName: 'tr'

  events:
    'click .previewBtn' : 'handlePreview'

  render: =>
    @$el.append @template(@model.toJSON())
    @

  handlePreview: =>
    btn = @$('.previewBtn')
    audioEl = @$('audio').get(0)
    if audioEl.paused
      btn.text('Pause')
      audioEl.play()
    else
      btn.text('Preview')
      audioEl.pause()