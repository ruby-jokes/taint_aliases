require "taint_aliases/version"

module TaintAliases
  def self.included(receiver)
    receiver.send(:alias_method, :grundle, :taint)
    receiver.send(:alias_method, :fleshy_fun_bridge, :taint)
  end
end

class Object
  include TaintAliases
end