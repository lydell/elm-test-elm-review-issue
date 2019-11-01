module DemoRuleTest exposing (..)

import DemoRule
import Expect exposing (Expectation)
import Test exposing (..)


suite : Test
suite =
    test "DemoRule" <|
        \_ ->
            Review.Test.run DemoRule.rule "module A exposing (..)\nfoo = 1"
                |> Review.Test.expectErrors
                    [ Review.Test.error
                        { message = "Don’t name variables `foo`"
                        , under = "foo"
                        }
                    ]
