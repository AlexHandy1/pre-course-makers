require 'ex48/parser.rb'
require "test/unit"

class TestNAME < Test::Unit::TestCase
  def test_sentence()
    assert_equal(Sentence.new(["noun", "player"], ["verb","run"], ["direction", "north"]), "player, run, north")
  end
end
