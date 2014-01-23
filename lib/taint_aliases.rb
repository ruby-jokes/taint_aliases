require "taint_aliases/version"

module TaintAliases
  TAINT_ALIASES = %w[grundle fleshy_fun_bridge]
  def self.included(receiver)
    TAINT_ALIASES.each do |a|
      receiver.send(:alias_method, a, :taint)
    end
  end
end

class Object
  include TaintAliases
end
