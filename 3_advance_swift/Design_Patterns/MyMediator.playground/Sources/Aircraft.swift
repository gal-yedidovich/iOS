import Foundation

public class Aircraft {
    private let name: String!
    private let mediator: Mediator!
    
    public init(_ name: String, _ mediator: Mediator){
        self.name = name
        self.mediator = mediator
        mediator.register(aircraft: self)
    }
    
    public func send(msg: String) {
        print("\(name) sent: \(msg)")
        mediator.publish(msg: msg, sender: self)
    }
    
    public func receive(_ message: String) {
        print("\(name) received message")
    }
    
}
