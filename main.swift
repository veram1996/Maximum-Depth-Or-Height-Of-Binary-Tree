class Node{
    var value :  Int?
    var leftNode : Node?
    var rightNode :  Node?
    init(_ value : Int, _ leftNode : Node?, _ rightNode : Node?) {
        self.value =  value
        self.leftNode =  leftNode
        self.rightNode =  rightNode
    }
}

var fouthNode =  Node(4, nil, nil)
var fifthNode =  Node(5,nil,nil)
var secondNode =  Node(2,fouthNode,fifthNode)
var thirdNode =  Node(3, nil, nil)
var firstNode =  Node(1,secondNode,nil)

func heightOfTree( root : Node?)->Int{
    guard let root =  root else {
        return 0
    }
    let left =  heightOfTree(root: root.leftNode)
    let right = heightOfTree(root: root.rightNode)
    var height = 0
    if(left < right){
        height =  1 +  right
    }else{
        height = 1 + left
    }
    
    return height
 
}

var head =  firstNode

print("height of tree =>",heightOfTree(root : head))

