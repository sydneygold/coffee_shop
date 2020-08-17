require "tty-prompt"
prompt = TTY::Prompt.new

require 'bundler/setup'
Bundler.require

require_all 'lib'