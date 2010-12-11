module AvlTree

    class Node
       attr_reader :left, :right, :value, :tree

       def initialize(tree, val)
           @tree = tree
           @value = val
       end

    end
end
