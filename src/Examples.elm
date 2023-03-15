module Examples exposing (..)

------
-- Functions --
------


f0 : Int -> Int
f0 a =
    a + 1


first : a -> b -> a
first x y =
    x


f1 : a -> (a -> b) -> b
f1 x g =
    g x



------
-- Types --
------


type MyBool
    = MyTrue
    | MyFalse


type MyMaybe a
    = MyNothing
    | MyJust a


type alias Mint =
    Maybe Int



------
-- Record Types
------


rec : { x : Int, y : Bool }
rec =
    { x = 228, y = True }


f2 : { a : Int, b : Int } -> Int
f2 r =
    r.a + r.b


type alias User =
    { login : String
    , email : String
    }


isJust : Maybe a -> Bool
isJust mb =
    case mb of
        Nothing ->
            False

        Just _ ->
            True


getX : { x : a, y : b } -> a
getX { x } =
    x
