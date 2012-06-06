require 'rubygems'
require 'ruby-prof'
require 'stringio'

module RubyProf
  def profiler(&block)
    result = RubyProf.profile &block
    printer = RubyProf::FlatPrinter.new(result)
    strio = StringIO.new
    printer.print(strio)
    strio.string
  end
  module_function :profiler
end