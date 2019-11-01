module DemoRule exposing (rule)

import Elm.Syntax.Declaration as Declaration exposing (Declaration)
import Elm.Syntax.Node as Node exposing (Node)
import Review.Rule as Rule exposing (Error, Rule)


rule : Rule
rule =
    Rule.newSchema "DemoRule"
        |> Rule.withSimpleDeclarationVisitor declarationVisitor
        |> Rule.fromSchema


declarationVisitor : Node Declaration -> List Error
declarationVisitor declaration =
    case Node.value declaration of
        Declaration.FunctionDeclaration node ->
            let
                nameNode =
                    node |> .declaration |> Node.value |> .name
            in
            if Node.value nameNode == "foo" then
                [ Rule.error
                    { message = "Don’t name variables `foo`"
                    , details = []
                    }
                    (Node.range nameNode)
                ]

            else
                []

        _ ->
            []
