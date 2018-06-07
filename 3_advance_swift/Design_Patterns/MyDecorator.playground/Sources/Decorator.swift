import Foundation

public class Decorator: Original {
    private let original: Original!
    
    public init(seed: Original){
        original = seed
    }
    
    public func bye() {
        print("Bye, Decorator")
    }
}
