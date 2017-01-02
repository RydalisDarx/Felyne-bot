require 'active_support'
require 'date'
require 'discordrb'
require 'discordrb/data'
require 'dotenv'
require 'json'
require 'rubygems'
require 'rufus-scheduler'
require 'sys/uptime'
require 'time'
require 'time_difference'
require 'yaml'
include Sys
require_relative 'lib/bot/extras/cron'
Dir["lib/bot/commands/*.rb"].each {|file| require_relative file }
require_relative 'lib/bot/class/loader'
require_relative 'lib/bot'
