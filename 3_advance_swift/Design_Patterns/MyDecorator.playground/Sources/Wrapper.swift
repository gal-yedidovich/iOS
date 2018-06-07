import Foundation

public class Wrapper {
    private let original: Original!
    
    public init(seed: Original) {
        self.original = seed
    }
    
    public func hi() {
        original.hi()
        print("wrapper also here")
    }
    
    public func say(_ message: String){
        print("wrapper says: \(message)")
    }
}
