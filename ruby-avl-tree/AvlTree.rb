module AvlTree

    class Node
       attr_reader :left, :right, :value, :tree

       def initialize(tree, val)
           @tree = tree
           @value = val
       end

       def add_left(l)
           @left = l
       end

       def add_right(r)
           @right = r
       end
    end
end
