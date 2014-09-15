#!/usr/bin/env ruby
#
# This program downloads a package and untars it.
#

require 'yaml'


class Getfile 

class_variable_set(:@@test, 'C:\ProgramData\chocolatey\bin\wget.exe wget http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.zip')
class_variable_set(:@@install, '7z x jboss-as-7.1.1.Final.zip -oc:\soft *.cpp -r')
class_variable_set(:@@remove, 'C:\Users\vagrant\Documents\usr\local\wbin\rm.exe jboss*')
class_variable_set(:@@dir, 'C:\Users\vagrant\Documents\jboss-as-7.1.1.Final.zip')

 def download_file
%x[#{@@test}]
  end

def install_file
%x[#{@@install}]
end

#def remove_file
#%x[#{@@remove}]
#end

if Dir.exists?("#{@@dir}") 
#exec 'Test-Path("#{@@dir}")' 
puts "Directory #{@@dir} exists. Exiting program."
else
o = Getfile.new
o.download_file
o.install_file
#o.remove_file
end
end
