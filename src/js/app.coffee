# Libraries
Himesama                  = require './himesama'
{ el,  Doc, Render }      = Himesama
{ Component, initState }  = Himesama
Render                    = Himesama.getRender()
{ getElementById }        = Doc


p     = el 'p'
div   = el 'div'
input = el 'input'


initialState = 
  title:       'Himesama..'
  catchPhrase: 'Lets make websites senpai!!'
  counter:     0

initState initialState


App = Component

  state: Himesama.getStore()

  needs: [
    'title'
    'catchPhrase'
    'counter'
  ]

  handleUp: (event) ->
    @setState counter: @state.counter + 1

  handleDown: (event) ->
    @setState counter: @state.counter - 1

  render: ->

    div null,
      p null, @state.title
      p null, @state.catchPhrase 
      p null, 'Counter : ' + @state.counter
      input 
        onClick:   @handleUp
        value:     '+ 1'
        type:      'submit'
      input 
        onClick:   @handleDown
        value:     '- 1'
        type:      'submit'


Render App, getElementById 'mount'

