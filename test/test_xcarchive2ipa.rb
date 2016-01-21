require 'minitest/autorun'

class TestXcarchive2ipa < Minitest::Test
  def setup()
    @bin_dir = File.expand_path(File.join(File.dirname(__FILE__), '../bin'))
    @xcarchive2ipa_dir = File.expand_path(File.join(File.dirname(__FILE__), 'xcarchive2ipa'))
  end

  def test_help
    output = `#{@bin_dir}/xcarchive2ipa --help`
    assert_match /Usage:/, output
  end
end
