class BinarySearchTree

  def initialize
    @root = nil
  end

  def insert(score, title)
    node = Node.new(score, title)
    @root = node and return 0 if !@root
    @root.left = node and return 1 if !@root.left
    @root.right = node and return 1 if !@root.right
    @root.left.left = node and return 2 if !@root.left.left
    @root.right.right = node and return 2 if !@root.right.right
  end

  def include?(score)
    return false if !@root
    return true if check_next_nodes(@root, score)
    return true if check_next_nodes(@root.left, score)
    return true if check_next_nodes(@root.right, score)
    false
  end

  def check_next_nodes(node, score)
    left = node.left
    right = node.right
    return true if left && left.score == score
    return true if right && right.score == score
  end

end
