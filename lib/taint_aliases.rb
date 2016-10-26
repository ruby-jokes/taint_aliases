require "taint_aliases/version"

module TaintAliases
  #http://onlineslangdictionary.com/thesaurus/words+meaning+perineum.html
  TAINT_ALIASES = %w[grundle fleshy_fun_bridge perineum gouch gooch grundel nacho]
  def self.included(receiver)
    TAINT_ALIASES.each do |a|
      suffix = 'aeiou'[a[-1]] ? 'd': 'ed'
      
      receiver.send(:alias_method, a, :taint)
      receiver.send(:alias_method, "un" + a, :untaint)
      receiver.send(:alias_method, a + suffix + "?", :tainted?)
    end
  end
end

class Object
  include TaintAliases
end
