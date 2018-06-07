import Foundation

public class PauseState: State {
    private let context: MusicPlayer!
    
    init(of context: MusicPlayer) {
        self.context = context
    }
    
    public func play() {
        print("playing music")
        context.set(state: PlayingState(of: context))
    }
    
    public func pause() {
        print("already in pause")
    }
    
    public func toggle() {
        play()
    }
}
