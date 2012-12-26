#!/usr/bin/env ruby
#############################################################
#  Tool to recursively collapse a directory.
#  copies (moves) all children files into to 
#  the current directory 
#
#
#  INSTALLATION:
#  chmod +x collapse.rb
#
#   
#  USAGE: 
#  collapse [-D] [dir/to/collapse]  
#
#
#  FLAGS:
#  -D , Destructive (Move files, remove empty dirs)
#  
#  TODO:
#  Read wildcards and support multiple collapsing.
#  Rescue on name collisions
#  Implement File transactions
#  Implement an undo stack
#############################################################

require 'fileutils'


DESTRUCTIVE = !(ARGV.grep /^-D$/).empty?     # -D given
ROOT = Dir.pwd                               # copy the files here


def collapse()
   auxilary = Dir.pwd
   dirs  = Dir.glob('*').select{|f|  File.directory? f }
   files = Dir.glob('*').select{|f|  File.file? f }
   if auxilary != ROOT
      files.each{ |f|
         DESTRUCTIVE ? FileUtils.mv(f,ROOT) : FileUtils.cp(f,ROOT) 
      }
   end
   if !dirs.nil? #there are files to copy or we need to recurse
      dirs.each{ |d|
         Dir.chdir d
         collapse()
         Dir.chdir auxilary
         Dir.rmdir d unless !DESTRUCTIVE
      }
   end
end

def usage()
   puts "\nTool to recursively collapse a Directory. \n\
copies (moves) all children files into to \n\
the current directory \n\
\n\
USAGE: \n\
collapse [-D] [dir/to/collapse]  \n\
\n\
FLAGS:\n\
-D , Destructive (Move files, remove empty dirs)"
end



if ARGV.size > 0
   Dir.chdir ARGV[-1]
   collapse()
   Dir.chdir ROOT
   Dir.rmdir(ARGV[-1]) unless !DESTRUCTIVE
else
   usage()
end
