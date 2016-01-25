require 'minitest/autorun'

class TestResignIpa < Minitest::Test

  def setup()
    @app_name = 'resignipa'
    @bin_dir = File.expand_path(File.join(File.dirname(__FILE__), '../bin'))
    @test_dir = File.expand_path(File.join(File.dirname(__FILE__), @app_name))
  end

  def test_help
    output = `#{@bin_dir}/#{@app_name} --help`
    assert_match /Usage:/, output
  end
end
