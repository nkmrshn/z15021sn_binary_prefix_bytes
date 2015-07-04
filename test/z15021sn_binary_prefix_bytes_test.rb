require 'test_helper'

class Z15021snBinaryPrefixBytesTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Z15021snBinaryPrefixBytes::VERSION
  end

  def test_kilo_bytes
    assert_equal 1024, "1KB".z15021sn_binary_prefix_bytes
    assert_equal 1024, "1KiB".z15021sn_binary_prefix_bytes
    assert_equal 1126.4, "1.1KB".z15021sn_binary_prefix_bytes
  end

  def test_mega_bytes
    assert_equal 1024 ** 2, "1MB".z15021sn_binary_prefix_bytes
    assert_equal 1024 ** 2, "1MiB".z15021sn_binary_prefix_bytes
  end

  def test_giga_bytes
    assert_equal 1024 ** 3, "1GB".z15021sn_binary_prefix_bytes
    assert_equal 1024 ** 3, "1GiB".z15021sn_binary_prefix_bytes
  end

  def test_tera_bytes
    assert_equal 1024 ** 4, "1TB".z15021sn_binary_prefix_bytes
    assert_equal 1024 ** 4, "1TiB".z15021sn_binary_prefix_bytes
  end

  def test_peta_bytes
    assert_equal 1024 ** 5, "1PB".z15021sn_binary_prefix_bytes
    assert_equal 1024 ** 5, "1PiB".z15021sn_binary_prefix_bytes
  end

  def test_exa_bytes
    assert_equal 1024 ** 6, "1EB".z15021sn_binary_prefix_bytes
    assert_equal 1024 ** 6, "1EiB".z15021sn_binary_prefix_bytes
  end

  def test_zetta_bytes
    assert_equal 1024 ** 7, "1ZB".z15021sn_binary_prefix_bytes
    assert_equal 1024 ** 7, "1ZiB".z15021sn_binary_prefix_bytes
  end

  def test_yotta_bytes
    assert_equal 1024 ** 8, "1YB".z15021sn_binary_prefix_bytes
    assert_equal 1024 ** 8, "1YiB".z15021sn_binary_prefix_bytes
  end

  def test_invalid_values
    assert_nil "KB".z15021sn_binary_prefix_bytes
    assert_nil "1KB1KB".z15021sn_binary_prefix_bytes
    assert_nil "1KB1MB".z15021sn_binary_prefix_bytes
    assert_nil "a1KBb".z15021sn_binary_prefix_bytes
    assert_nil "B".z15021sn_binary_prefix_bytes
    assert_nil "1B".z15021sn_binary_prefix_bytes
    assert_nil "1".z15021sn_binary_prefix_bytes
    assert_nil "".z15021sn_binary_prefix_bytes
  end
end
