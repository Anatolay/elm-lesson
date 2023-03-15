module Main exposing (..)

import Browser
import Html
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


main : Program () Model Msg
main =
    Browser.sandbox
        { init = List.repeat 5 0
        , view = view
        , update = update
        }



-- Your Model is a list of integers now. It represents
-- an arbitrary number of counters to display to the user.
--
-- Your goal is to write a view and update functions that
-- deal with lists of arbitrary length.
type alias Model =
    List Int



-- TODO: Finish the message data type.
-- It should contain information on which counter is affected
-- and how the counter is affected (incremented/decremented).
--
-- bonus: add an extra action to reset the counter.
type Msg
    = MyMsg -- ??? ???



-- TODO: should display all counters from the list
view : Model -> Html.Html Msg
view _ =
    Html.div [ class "container" ]
        [ Html.text "Hi!" ]


-- TODO: should display a single counter.
-- Fist argument is counter value.
-- Second argument is left for you to define. It should provide
-- a way to fire the appropriate message.
--
-- bonus: add an extra button to fire a 'reset counter' message.
viewCounter : Int -> () -> Html.Html Msg
viewCounter val counter =
    let
        -- [ onClick decrementCounter ], based on `counter` argument
        decrAttrs =
            [ onClick MyMsg ]
        -- [ onClick incrementCounter ], based on `counter` argument
        incrAttrs =
            [ onClick MyMsg ]
    in
    Html.div []
        [ Html.button decrAttrs [ Html.text "-" ]
        , Html.text (String.fromInt val)
        , Html.button incrAttrs [ Html.text "+" ]
        ]



-- TODO: implement.
-- Fired message should contain information on which counter should be updated,
-- as well as how it should be updated. Update that counter.
update : Msg -> Model -> Model
update _ model =
    model
