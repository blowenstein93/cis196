class Notifications < ActionMailer::Base
  default from: "hello@bradsproject.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_command.subject
  #
  def new_comment(comment)
    @greeting = "Hello there,"
    @id = comment.id
    @commentor = comment.user
    mail to: comment.user.email
  end
end