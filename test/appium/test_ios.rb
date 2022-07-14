require 'appium_lib_core'
require 'appium_flutter_finder'

require 'minitest/autorun'

class ExampleTests < Minitest::Test
  include ::Appium::Flutter::Finder

  CAPS = {
    caps: {
      platformName: 'iOS',
      automationName: 'flutter',
      platformVersion: '15.5',
      deviceName: 'iPhone 8',
      app: "#{Dir.pwd}/Runner.zip"
    },
    appium_lib: {
      export_session: true,
      wait_timeout: 20,
      wait_interval: 1
    }
  }.freeze

  # Function should start with `test_`
  def test_run_example_ios
    @core = ::Appium::Core.for(CAPS)
    @driver = @core.start_driver
    @driver.context = 'FLUTTER'


    text_finder = by_text 'Taps: 0'
    element = ::Appium::Flutter::Element.new(@driver, finder: text_finder)
    assert_equal 'Taps: 0', element.text

    fab_finder = by_type 'FloatingActionButton'
    element = ::Appium::Flutter::Element.new(@driver, finder: fab_finder)
    element.click
    element.click
    element.click

    text_finder = by_text 'Taps: 3'
    element = ::Appium::Flutter::Element.new(@driver, finder: text_finder)
    assert_equal 'Taps: 3', element.text

    # @driver.context = 'NATIVE_APP'

    # element = @driver.wait_until { |d| d.find_element :accessibility_id, 'currentCounter' }
    # assert_equal 'Current counter: 2', element.text
    # @driver.terminate_app
  end

  def test_run_example_ios_2
    @core = ::Appium::Core.for(CAPS)
    @driver = @core.start_driver
    @driver.context = 'FLUTTER'

    text_finder = by_text 'Taps: 0'
    element = ::Appium::Flutter::Element.new(@driver, finder: text_finder)
    assert_equal 'Taps: 0', element.text

    # @driver.terminate_app
  end
end
