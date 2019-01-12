require 'rubygems'
require 'open-uri'

@url = 'http://www.igvita.com'
# @url = 'https://www.uukanshu.com/'
@response = ''

open(@url, 'User-Agent' => "Ruby/#{RUBY_VERSION}",
           'From' => 'email@addr.com',
           'Referer' => 'http://www.igvita.com/') do |f|
                                                    puts "Fetched document: #{f.base_uri}"
                                                    puts "\t Content Type: #{f.content_type}\n"
                                                    puts "\t Charset: #{f.charset}\n"
                                                    puts "\t Content-Encoding: #{f.content_encoding}\n"
                                                    puts "\t Last Modified: #{f.last_modified}\n\n"

                                                    @response = f.read
                                                  end