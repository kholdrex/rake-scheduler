require 'minitest/autorun'
require 'date'
require '../lib/rake_scheduler'

class RakeSchedulerTest < Minitest::Test
  def test_task_not_found
    assert_equal "Don't know how to build task 'fake'", RakeScheduler.daily('fake')
  end

  def test_invoke_false
    fake_date = Date.new(2016, 12, 12)

    Date.stub :today, fake_date do
      assert_equal false, RakeScheduler.yearly('fake')
    end
  end
end