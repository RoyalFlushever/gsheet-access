OmniAuth.config.logger = Rails.logger
OmniAuth.config.full_host = Rails.env.production? ? 'https://gsheet-access.herokuapp.com' : 'http://localhost:3000'


Rails.application.config.middleware.use OmniAuth::Builder do
	provider :google_oauth2, 
	'705422798491-gvbuq42q5c5f7f7pse66sbuet4vjp592.apps.googleusercontent.com', 
	'9akWLL9bjgGj8W5C4ZL6awdl', 
	{
    scope: [
      "profile",
      "https://www.googleapis.com/auth/drive",
      "https://spreadsheets.google.com/feeds/"
      ],
    prompt: 'select_account',
    access_type: 'offline'
  }
end