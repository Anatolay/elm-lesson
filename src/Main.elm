module Main exposing (..)

import Browser
import Html
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


main : Program () Model Msg
main =
    Browser.sandbox
        { init = 0
        , view = view
        , update = update
        }


type alias Model =
    Int


type Msg
    = Incr
    | Decr


view : Model -> Html.Html Msg
view x =
    -- If you think of it, each HTML element consists of 3 parts:
    -- element name (1), a list of attributes (2) and a list of child elements (3).
    --
    -- Thus, the Html package provides all elements as functions where
    -- function name represents attribute name (1) and each such function takes
    -- two lists as arguments: the first one for the attributes (2)
    -- and the second for child elements (3).
    Html.div [ class "container" ]
        [ Html.div []
            [ Html.button [ onClick Decr ] [ Html.text "-" ]
            , Html.text (String.fromInt x)
            , Html.button [ onClick Incr ] [ Html.text "+" ]
            ]
        ]


update : Msg -> Model -> Model
update msg model =
    case msg of
        Decr ->
            model - 1

        Incr ->
            model + 1
