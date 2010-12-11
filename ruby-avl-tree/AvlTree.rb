module AvlTree

    Left = 0
    Right = 1


    class Node
        attr_reader :childs, :value, :tree, :balance_factor
        attr :parent

        def initialize(tree, val)
            @tree = tree
            @value = val
            @childs = [nil, nil]
            @balance_factor = 0
            @parent = nil 
        end

        def _calc_new_balance_factor(which)
            if (which == Left)
                return -1
            else
                return 1
            end
        end

        def other_child_idx(which)
            return 1-which
        end

        def add_left(l)
            return add_child(Left, l)
        end

        def add_right(r)
            return add_child(Right, r)
        end

        def add_child(which, child)
            if (@childs[which])
                raise "Childs #{which} already exists."
            end

            @childs[which] = child
                
            if (@childs[other_child_idx(which)])
                @balance_factor = 0
            else
                @balance_factor = _calc_newb_alance_factor(which)
            end

        end
    end
end
