module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing( onClick )

-- Model
type alias Model = Int
type Msg = Click

-- App

main =
  beginnerProgram { model = init, view = view, update = update }


init: Model
init =
  0

update: Msg -> Model -> Model
update msg model =
  case msg of
    Click -> model + 1

view: Model -> Html Msg
view model =
  div []
    [button [onClick Click] [text "+"]
    , text (toString model)]
    

