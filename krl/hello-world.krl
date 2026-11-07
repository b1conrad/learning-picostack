ruleset hello-world {
  meta {
    description <<
      Hello World program in KRL
    >>
    author "Bruce Conrad"
    shares hello
  }
  global {
    /**
     * Say hello.
     * @returns String "hello message"
     */
    hello = function() {
      "Hello World!"
    }
  }
}
