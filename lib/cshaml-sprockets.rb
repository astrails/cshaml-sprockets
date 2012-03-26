require "cshaml-sprockets/version"
require 'tilt'
require 'sprockets'
module Cshaml
  module Sprockets
    class Template < ::Tilt::Template
      def self.engine_initialized?
        true
      end
      def initialize_engine
      end
      def prepare
      end

      def _evaluate(haml_code, generator = nil)
        haml_code = haml_code.gsub(/\\/,"\\\\").gsub(/\'/,"\\\\'").gsub(/\n/,"\\n")
        "haml.compileHaml({source: '#{haml_code}'#{ generator ? ", generator: '#{generator}'" : "" }})"
      end

      def evaluate(scope, locals, &block)
        _evaluate(data.dup)
      end
    end

    class CoffeeTemplate < Template
      def evaluate(scope, locals, &block)
        _evaluate(data.dup, 'coffeescript')
      end
    end
  end
end
Sprockets::Engines
Sprockets.register_engine '.cshamljs', Cshaml::Sprockets::Template
Sprockets.register_engine '.cshamlcoffee', Cshaml::Sprockets::CoffeeTemplate
require 'cshaml-sprockets/engine' if defined?(Rails)
