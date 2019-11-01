module MainTest exposing (..)

import Expect
import Main
import Test exposing (..)


suite : Test
suite =
    test "sanity-check" <|
        \_ ->
            Main.foo
                |> Expect.equal 42
