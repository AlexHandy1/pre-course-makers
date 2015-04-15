require "ex47/simple.rb"
require "test/unit"

class TestGame < Test::Unit::TestCase

	def test_hello
		simple = Simple.new()
		assert_equal(simple.hello, "hello")
	end

	def test_hash_party
		simple2 = Simple.new()
		assert_equal(simple2.hash_party("Manchester London Stockport Newcastle Leeds"), {1=>"Manchester", 2=>"London", 3=>"Stockport", 4=>"Newcastle", 5=>"Leeds"})
		assert_equal(simple2.go_party(1),"Manchester")
	end

end