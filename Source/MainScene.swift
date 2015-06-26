import Foundation

class MainScene: CCNode
{
    
    weak var grid: Grid!
    weak var generationLabel: CCLabelTTF!
    weak var populationLabel: CCLabelTTF!
    
    var cellWidth: CGFloat = 0
    var cellHeight: CGFloat = 0
    var gridArray: [[Creature]]!
    
    var timer = CCTimer()
    
    func play()
    {
        schedule("step", interval: CCTime(0.5))
    }
    
    func pause()
    {
        unschedule("step")
    }
    
    func step()
    {
        grid.evolveStep()
        
        generationLabel.string = "\(grid.generation)"
        populationLabel.string = "\(grid.totalAlive)"
    }
    
    
    
}