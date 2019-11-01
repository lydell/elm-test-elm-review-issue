module MainTest exposing (..)

import Expect
import Main
import Test exposing (..)


suite : Test
suite =
    test "sanity-check" <|
        \_ ->
            Main.answer
                |> Expect.equal 42
