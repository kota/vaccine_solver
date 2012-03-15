require 'matrix'

e0 = Matrix[[0,0,0,0],
            [0,0,0,0],
            [0,0,0,0],
            [0,0,0,0]]

v0 = Matrix[[1],[0],[0],[0]]
i0 = Matrix[[0],[0],[0],[1]]

op = Matrix[[0,1,0,0],
            [1,0,0,0],
            [0,0,0,0],
            [0,0,0,0]]

def apply_operation(edges,vaccines,viruses,operation)
  applied_edges = edges + operation
  applied_vaccines = apply_vaccine(applied_edges,vaccines)
end

def apply_vaccine(edges,vaccines)
  vaccines + (edges * vaccines)
end

puts apply_operation(e0,v0,i0,op)
