public class Cow : Animal{
    public override init(){
        super.init();
        self.name = "Burenka";
    }
    
    public func giveMilk() -> String? {
//        if self.getIsAlive(){
//            return "milk";
//        }
//        return nil;
        return getIsAlive() ? "milk" : nil
    }
    
    public override func makeNoise() {
        print("\(self.name!) says Moo");
    }
    
}
