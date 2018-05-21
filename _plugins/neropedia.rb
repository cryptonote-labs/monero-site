# Copyright (c) 2014-2015, The Monero Project
# 
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without modification, are
# permitted provided that the following conditions are met:
# 
# 1. Redistributions of source code must retain the above copyright notice, this list of
#    conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright notice, this list
#    of conditions and the following disclaimer in the documentation and/or other
#    materials provided with the distribution.
# 
# 3. Neither the name of the copyright holder nor the names of its contributors may be
#    used to endorse or promote products derived from this software without specific
#    prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL
# THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
# THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

module Jekyll
  module Converters
    class Markdown < Converter
      alias base_converter convert
      @@neropedia = Array.new
      @@neropedia_ordered = Hash.new

      def convert(content)
        # build up index of Moneropedia summaries
        if @@neropedia.empty?
          
          # grab all .md files in the Moneropedia folder, ignore index.md
          neropedia_path = File.join(@config["source"], "/resources/neropedia/*.md")
          files = Dir.glob(neropedia_path).reject{|f| f =~ Regexp.new('index.md', Regexp::EXTENDED | Regexp::IGNORECASE) }

          # step through all the files
          files.each do |entry_file|
            entry = { }
            entry = SafeYAML.load_file(entry_file)

            if !entry.empty?
              @@neropedia.push({ :terms => entry['terms'], :summary => entry['summary'], :file => File.basename(entry_file, ".*") })
              @@neropedia_ordered = @@neropedia_ordered.merge({ entry['entry'] => File.basename(entry_file, ".*") })
            end
          end
        end

        # Jekyll.logger.warn YAML::dump(@@neropedia_ordered)
        if content.include? '@neropedia'
          # Moneropedia index, replace with a list of entries
          cur_letter = 'A'
          replace = "<div class='col-md-4 col-sm-6 col-xs-12 moneropedia'>\n<h4 class='text-center'>A</h4>\n"
          @@neropedia_ordered.sort.map do |entry, link|
            if cur_letter != entry[0]
              replace += "</div>\n<div class='col-md-4 col-sm-6 col-xs-12 moneropedia'>\n<h4 class='text-center'>" + entry[0] + "</h4>\n"
              cur_letter = entry[0]
            end
            replace += "<a href='/resources/neropedia/" + link + ".html'>" + entry + "</a><br>\n"
          end
          replace += "</div>"
          content = content.gsub(/(\@neropedia)/i, replace)          
        end

        # replace instances of @term with tooltips of the summary
        @@neropedia.each do |entry|
          entry[:terms].each do |term|
            content = content.gsub(/(\@#{term})\b/i, '<a data-tooltip="' + entry[:summary] + '" href="/resources/neropedia/' + entry[:file] + '.html" >' + term.gsub('-',' ') + '</a>')
          end
        end
        
        base_converter(content)
      end
    end
  end
end
