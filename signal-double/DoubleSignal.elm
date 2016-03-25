import Html exposing (..)
import Mouse

view : Int -> Html
view x =
  let
    doubleTxt = toString (double x)
    text = (toString x) ++ " | " ++ doubleTxt
  in
    Html.text text

double : Int -> Int
double x =
  x * 2

main : Signal.Signal Html
main =
  Signal.map view Mouse.x