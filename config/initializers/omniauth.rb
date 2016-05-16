Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, ENV["1725856364297161"], ENV["38125df0bf8499ddea6f586bf7f12f7b"], scope: 'email, publish_actions'
end