require 'helper'

class StringTest < Test::Unit::TestCase

  def test_to_sha1
    assert_equal "5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8", "password".to_sha1
  end

  def test_to_slug
    assert_equal "hello-world", "Hello World".to_slug
    assert_equal "hello-world-how-are-you", "Hello World, How are You?".to_slug
  end

  def test_to_email
    assert_equal Array, "".to_email.class, "".to_email.class
    assert "hello bseanvt@gmail.com how are you?".to_email.include?("bseanvt@gmail.com")
    assert "sean@agilionapps.com and adam@agilionapps.com are both email addresses".to_email.include?("adam@agilionapps.com")
  end
end
