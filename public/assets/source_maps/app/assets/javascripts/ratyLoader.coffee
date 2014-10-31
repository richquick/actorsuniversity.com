$.fn.raty.defaults.path = "/assets"
$.fn.raty.defaults.half_show = true


class @RatyLoader
  setup: ->
    $(".star").raty
      score: ->
        $(this).attr "data-rating"

      number: ->
        $(this).attr "data-star-count"

      click: (score, evt) ->
        $.post "/rate",
          score: score
          dimension: $(this).attr("data-dimension")
          id: $(this).attr("data-id")
          klass: $(this).attr("data-classname")
        , (data) ->
          if data
            # success code goes here ...
            return true
