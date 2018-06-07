import Foundation

public class Adapter : Target {
    private let adaptee : Adaptee!
    
    public init(adaptee: Adaptee) {
        self.adaptee = adaptee
    }
    
    public func request() {
        adaptee.specialRequest()
    }
}
