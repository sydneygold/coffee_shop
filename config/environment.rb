require 'bundler/setup'
Bundler.require

require_all 'lib'

prompt = TTY::Prompt.new