require "../hotkeys"

describe "hotkeys binding", ->
  it "should bind a hotkey", (done) ->
    $(document).bind "keydown", "a", ->
      done()

    $(document).trigger $.Event "keydown",
      which: 65 # a
      keyCode: 65
