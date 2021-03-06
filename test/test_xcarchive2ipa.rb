require 'minitest/autorun'

class TestXcarchive2Ipa < Minitest::Test

  def setup()
    @app_name = 'xcarchive2ipa'
    @bin_dir = File.expand_path(File.join(File.dirname(__FILE__), '../bin'))
    @test_dir = File.expand_path(File.join(File.dirname(__FILE__), @app_name))
  end

  def test_help
    output = `#{@bin_dir}/#{@app_name} --help`
    assert_match /Usage:/, output
  end
end
