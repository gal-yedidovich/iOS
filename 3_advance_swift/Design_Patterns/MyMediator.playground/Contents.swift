let mediator = Mediator()
var a1 = Aircraft("F16", mediator)
var a2 = Aircraft("F35", mediator)
var a3 = Aircraft("Stealth", mediator)
var a4 = Aircraft("Jumbo", mediator)

a1.send(msg: "hello")
