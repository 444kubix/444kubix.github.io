# require 'plist'
# DEFAULTS_FILE = 'defaults.plist'

require 'json'
DEFAULTS_FILE = 'defaults.json'
APP_NAME = "qwevideo"
#
# NEVER EVER USE DOTS IN THE FUTURE !!!
#

defaults = {
  'rules' => [
    { 
      'blacklistedHosts' => [
        'youtube.com',
        'googlevideo.com',
        'soundcloud.com',
        'mp3skull.com',
        'mp3monkey.com',
        'soundowl.com'
      ],
      'cii' => 132,
      'cri' => 200,
    },
    # {
    #   'brw' => 1,
    #   'debug' => 1
    # }
  ]
}

# File.write(File.expand_path("./source/defaults.plist"), defaults.to_plist)
build_dir = File.expand_path("./source/")
unless File.directory?(build_dir)
  FileUtils.mkdir_p(build_dir)
end
filePath = build_dir + '/' + DEFAULTS_FILE
puts "writing #{filePath} #{defaults}" #.colorize(:light_green)
# File.write(filePath, defaults.to_plist)
File.write(filePath, defaults.to_json)
File.write(File.join(File.expand_path("../apps/#{APP_NAME}/"), DEFAULTS_FILE), defaults.to_json)
