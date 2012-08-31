begin  
  if RUBY_VERSION > '1.8'
    require 'debugger'
    require 'simplecov'
  else
    require 'ruby-debug'
    Debugger.start
  end
rescue LoadError
  # ignore
end

require 'bibtex'
require 'minitest/unit'

World do
  extend MiniTest::Assertions
end
