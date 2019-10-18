Gollum::Page.send :remove_const, :FORMAT_NAMES if defined? Gollum::Page::FORMAT_NAMES

## Omni Auth
require 'omnigollum'
require 'omniauth/strategies/github'

wiki_options = {
  :live_preview => false,
  :allow_uploads => true,
  :per_page_uploads => true,
  :allow_editing => true,
  :css => true,
  :js => true,
  :mathjax => true,
  :h1_title => true
}
Precious::App.set(:wiki_options, wiki_options)

options = {
  # OmniAuth::Builder block is passed as a proc
  :providers => Proc.new do
    # Found https://github.com/settings/applications/
    provider :github, 'Client ID', 'Client Secret'
  end,
  :dummy_auth => false,
  # If you want to make pages private:
  #:protected_routes => ['/private*'],

  # Specify committer name as just the user name
  :author_format => Proc.new { |user| user.name },
  # Specify committer e-mail as just the user e-mail
  :author_email => Proc.new { |user| user.email },

  # Authorized users
  :authorized_users => ["your_email@example.com"],
}


## :omnigollum options *must* be set before the Omnigollum extension is registered
Precious::App.set(:omnigollum, options)
Precious::App.register Omnigollum::Sinatra
