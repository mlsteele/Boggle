log = -> console.log.apply console, arguments
plantTimeout = (ms, cb) -> setTimeout cb, ms

log 'load'

# $ ->
#   w = 10
#   h = 10

#   get_box = (i, j) ->
#     $('foobar-#{i}-#{j}')

#   spin = (box) ->
#     spin_internal = (iterations) ->
#       return if iterations <= 0
#       box.literal_spin()
#       plantTimeout spin_internal, spin_internal iterations - 1
#     spin_internal 3

#   shuffle = (cb) ->
#     plantTimeout 5000, cb
#     for i in w
#       for j in h
#         spin get_box i, j

#   $('shuffle').click ->
#     setup_board w, h
#     do shuffle

# $ ->
#   w = 4
#   h = 4

#   window.get_box = (i, j) ->
#     $("table tr :eq(#{i}) td :eq(#{j})")

#   for i in [0...w]
#     for j in [0...h]
#       # (get_box i, j).css {'background-color': '#f00'}
#       random_letter = -> Math.random().toString(36).substring(7, 8)
#       (get_box i, j).text random_letter()
#       # (get_box i, j).fadeOut 400
#       (get_box i, j).slideUp 400
#       (get_box i, j).slideDown 400
