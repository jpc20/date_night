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
end
