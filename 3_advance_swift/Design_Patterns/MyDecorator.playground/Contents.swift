
var original = Original()
original.hi()

Decorator(seed: original).bye()

let wrap = Wrapper(seed: original)
wrap.hi()

wrap.say("hello world")
