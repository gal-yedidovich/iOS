import Foundation

public class MusicPlayer {
    private var state: State!
    
    public init() {
        state = PauseState(of: self)
    }
    
    public func set(state: State) {
        self.state = state
    }
    
    public func playMusic() {
        state.play()
    }
    
    public func pauseMusic() {
        state.pause()
    }
    
    public func toggleMusic() {
        state.toggle()
    }
}
