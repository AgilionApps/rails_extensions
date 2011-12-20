require 'helper'

class StringTest < Test::Unit::TestCase

  def test_to_sha1
    assert_equal "5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8", "password".to_sha1
  end

  def test_to_slug
    assert_equal "hello-world", "Hello World".to_slug
    assert_equal "hello-world-how-are-you", "Hello World, How are You?".to_slug
    assert_equal "hello_world_how_are_you", "Hello World, How are You?".to_slug("_")
  end

  def test_to_email
    assert "hello bseanvt@gmail.com how are you?".to_email.include?("bseanvt@gmail.com")
    assert "sean@agilionapps.com and adam@agilionapps.com are both email addresses".to_email.include?("adam@agilionapps.com")
  end
  
  def test_mentions
    assert_equal [], "hello world".mentions
    assert_equal %W(@bseanvt @tristan), "Hi, @bseanvt and @tristan, what's up?".mentions
  end
  
  def test_hash_tags
    assert_equal [], "hellow world".hash_tags
    assert_equal %W(#rails #ruby), "#rails is a framwork written in #ruby".hash_tags
  end
end
