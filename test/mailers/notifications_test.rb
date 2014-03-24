require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "new_command" do
    mail = Notifications.new_command
    assert_equal "New command", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
