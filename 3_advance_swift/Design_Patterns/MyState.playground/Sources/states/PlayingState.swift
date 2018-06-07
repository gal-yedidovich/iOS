import Foundation

public class PlayingState : State {
    private let context: MusicPlayer!
    
    init(of context: MusicPlayer) {
        self.context = context
    }
    
    public func play() {
        print("already playing music..")
    }
    
    public func pause() {
        print("music stopped")
        context.set(state: PauseState(of: context))
    }
    
    public func toggle() {
        pause()
    }
}
