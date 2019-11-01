# elm-test with elm-review issue

1. `npm ci`
2. `npm test`

Notice how the tests in `tests/` run successfully, but the ones in `review/tests/` fail to run.

```
❯ npm test

> @ test /Users/lydell/stuff/elm-test-issue
> npm run test-app && npm run test-review


> @ test-app /Users/lydell/stuff/elm-test-issue
> elm-test tests


elm-test 0.19.1
---------------

Running 1 test. To reproduce these results, run: elm-test --fuzz 100 --seed 397864833266731 /Users/lydell/stuff/elm-test-issue/tests/MainTest.elm


TEST RUN PASSED

Duration: 134 ms
Passed:   1
Failed:   0


> @ test-review /Users/lydell/stuff/elm-test-issue
> elm-test review/tests

-- CONFUSING FILE --------------------------------------------------------------

I am getting confused when I try to compile this file:

    /Users/lydell/stuff/elm-test-issue/review/tests/DemoRuleTest.elm

I always check if files appear in any of the "source-directories" listed in your
elm.json to see if there might be some cached information about them. That can
help me compile faster! But in this case, it looks like this file may be in
either of these directories:

    /Users/lydell/stuff/elm-test-issue/review
    /Users/lydell/stuff/elm-test-issue/review/tests

Try to make it so no source directory contains another source directory!

Compilation failed while attempting to build /Users/lydell/stuff/elm-test-issue/review/tests/DemoRuleTest.elm
```
