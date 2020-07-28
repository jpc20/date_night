require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new(92, "Sharknado 3")
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_it_has_attributes
    assert_equal "Sharknado 3", @node.title
    assert_equal 92, @node.score
    assert_nil @node.left
    assert_nil @node.right
  end
end
