# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Depot::Application.configure do
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address: "smtp.sendgrid.net",
    port: 25,
    authentication: "plain",
    user_name: ENV["MAILER_USERNAME"],
    password: ENV["MAILER_PASSWORD"],
    enable_starttls_auto: true
  }
end
