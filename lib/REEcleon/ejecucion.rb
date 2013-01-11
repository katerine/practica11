require "REEcleon"

module REEcleon
module Expresiones

module_function

def alt(left, right)
lambda { |x| left[x] or right[x] }
end
alias :| :alt


def char(c)
lambda { |x| x[0,c.length] == c and x[c.length..-1] }
end


def epsilon
lambda {|x| x }
end

def plus(r)
lambda { |x| seq(r, star(r))[x] }
end
alias :+ :alt


def seq(left, right)
lambda { |x| w = left[x] and right[w] }
end
alias :- :seq


def star(r)
lambda { |x| plus(r)[x] or epsilon[x] }
end
alias :~ :star

   end
end
