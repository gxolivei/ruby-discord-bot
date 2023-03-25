require 'discordrb'
require 'dotenv'
require_relative 'app/config'

Dotenv.load

# Require all command files
Dir['./app/commands/**/*.rb'].each { |file| require_relative file }

bot = Discordrb::Bot.new token: ENV['BOT_TOKEN'], client_id: ENV['APPLICATION_ID'].to_i

# Bot event handlers and other logic

bot.run