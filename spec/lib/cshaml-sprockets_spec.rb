require 'spec_helper'

describe Cshaml::Sprockets::CoffeeTemplate do
  describe 'evaluate' do
    def process(data)
      described_class.new { data }.render
    end

    it "should support coffeescript" do
      process(%{test}).should include(%{haml.compileHaml({source: 'test', generator: 'coffeescript'}})
    end
  end
end

describe Cshaml::Sprockets::Template do
  describe 'evaluate' do
    def process(data)
      described_class.new { data }.render
    end

    it 'should escape the string correctly' do
      process(%{test}).should include(%{haml.compileHaml({source: 'test'}})
      process(%{test "test"}).should include(%{haml.compileHaml({source: 'test "test"'}})
      process(%{test\ntest}).should include(%{haml.compileHaml({source: 'test\\ntest'}})
      process(%{test 'test'}).should include(%{haml.compileHaml({source: 'test \\'test\\''}})
    end
  end
end

