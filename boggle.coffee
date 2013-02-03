log = -> console.log.apply console, arguments
plantTimeout = ms, cb -> setTimeout cb, ms

log 'load'

$ ->
  w, h = (10, 10)

  get_box = (i, j) ->
    $('foobar-#{i}-#{j}')

  spin = (box) ->
    spin_internal = (iterations) ->
      return if iterations <= 0
      box.literal_spin()
      plantTimeout spin_internal, spin_internal iterations - 1
    spin_internal 3

  shuffle = (cb) ->
    plantTimeout 5000, cb
    for i in w
      for j in h
        spin get_box i, j

  $('shuffle').click ->
    setup_board w, h
    do shuffle
