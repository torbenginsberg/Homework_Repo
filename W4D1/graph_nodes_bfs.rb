require "set"

class GraphNode
    attr_accessor :value, :neighbors
    
    def initialize(value)
        @value = value
        @neighbors = []
    end

    def add_neighbor(node)
        self.neighbors << node
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(starting_node, target_value)
    nodes_queue = [starting_node]
    visited = Set.new()

    until nodes_queue.empty?
        current_node = nodes_queue.shift
        unless visited.include?(current_node)
            return current_node if current_node.value == target_value
            visited.add(current_node)
            nodes_queue += current_node.neighbors
        end
    end

    nil
end

puts bfs(a, "f")