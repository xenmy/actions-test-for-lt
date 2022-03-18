#!/usr/bin/env ruby

require 'octokit'

client = Octokit::Client.new(:access_token => ENV['API_TOKEN'])

client.auto_paginate = true
repos = client.repositories('xenmy')
repos.each do |repo|
  puts "name: #{repo.name}, language: #{repo.language}"
  puts "url: #{repo.url}"
  puts ""
end
