func playerDidMove(_ direction: String) {
    if direction == "up" ||
       direction == "down" ||
       direction == "left" ||
       direction == "right" {
        print("Player moved \(direction)")
    } else {
        print("Oops! That direction doesn't make sense: \(direction)")
    }
}

playerDidMove("up")
playerDidMove("left")
playerDidMove("dwn")
playerDidMove("Up")



enum Direction {
    case up
    case down
    case left
    case right

    var excited: String {
        switch self {
        case .up:
            return "UP"
        case .down:
            return "DOWN"
        case .left:
            return "LEFT"
        case .right:
            return "RIGHT"
        }
    }
    var change: (Int,Int) {
        switch self {
        case .up:
            return (0,1)
        case .down:
            return (0,-1)
        case .right:
            return (1,0)
        case .left:
            return (-1,0)
        }
    }
}

enum DiagonalDir{
    case upRight, upLeft, downRight, downLeft
    var change: (Int,Int) {
        switch self {
        case .upRight:
            return (1,1)
        case .downLeft:
            return (-1,-1)
        case .downRight:
            return (1,-1)
        case .upLeft:
            return (-1,1)
        }
    }
}

let direction1 = Direction.down
var direction2 = Direction.up
var direction3 = Direction.right
    

func playerDidMove(_ direction: Direction) {
    print("Player moved \(direction.excited)")
}

playerDidMove(direction1)
playerDidMove(direction2)
playerDidMove(direction3)

playerDidMove(.left)
