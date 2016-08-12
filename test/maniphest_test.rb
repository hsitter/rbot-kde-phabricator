require_relative 'test_helper'

require 'lib/maniphest'

class ManiphestTest < Test::Unit::TestCase
  def test_get_success
    VCR.use_cassette("#{self.class}/#{__method__}") do
      task = Conduit::Maniphest.get(3192)
      assert_equal('Move Mediacentre to Extragear', task.title)
    end
  end
end
