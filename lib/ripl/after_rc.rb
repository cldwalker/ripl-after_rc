module Ripl
  module AfterRc
    VERSION = '0.1.0'

    def self.included(mod)
      Ripl.extend ClassMethods
    end

    def before_loop
      super
      Ripl.after_rcs.each {|e| e.call }
    end

    module ClassMethods
      def after_rcs
        @after_rcs ||= []
      end

      def after_rc(&block)
        after_rcs << block
      end
    end
  end
end

Ripl::Shell.send :include, Ripl::AfterRc if defined? Ripl::Shell
