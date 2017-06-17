Rails.application.config.middleware.use OmniAuth::Builder do
  # Instead of copying our GITHUB_ID and GITHUB_SECRET into the app, we're using a reference to the ENV global variable,
  # which contains data stored in Bash variables in the Terminal.
  # The scope option defines what extra fields on the GitHub profile we want. In this example, we want the user's email
  # (in addition to his basic profile information, like name, which we'll get for free).
  provider :github, ENV.fetch('GITHUB_ID'), ENV.fetch('GITHUB_SECRET'), scope: "user:email"
end
