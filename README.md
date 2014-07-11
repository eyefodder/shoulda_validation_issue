
# Shoulda Validator Issue
This is a demo repo to reproduce the issue described [here](https://github.com/thoughtbot/shoulda-matchers/issues/552#issuecomment-48686578) 
## Steps to reproduce

### Guard / Spork interfering with rspec run on terminal
1. Open 2 Terminal windows
2. In one, type `rspec`
 * Should get 2 examples, 0 failures
3. In second window, type `guard` to start guard & spork
4. Press `enter` to run suite
 * Should still get 2 examples, 0 failues; 
 * but get 2 failures "undefined method `validate_presence_of' for #<RSpec::Core::ExampleGroup::Nested_1:0x00000103552ab8>"
5. In first window, again type `rspec`
 * Expect tests to pass
 * but see same error as in guard
6. In second window, type `exit` to quit guard
7. In first window, type `rspec`, behavior back to normal.

### Matchers not working in Guard / Spork
1. Open a terminal window and type `guard`
2. Press `enter` to run suite
 * Should get 2 examples, 0 failues; 
 * but get 2 failures "undefined method `validate_presence_of' for #<RSpec::Core::ExampleGroup::Nested_1:0x00000103552ab8>"
