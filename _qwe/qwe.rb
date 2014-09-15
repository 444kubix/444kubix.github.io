# require 'plist'
# DEFAULTS_FILE = 'defaults.plist'

require 'json'
DEFAULTS_FILE = 'defaults.json'

#
# NEVER EVER USE DOTS IN THE FUTURE !!!
#

defaults = {
  'msgs' => [
    {
      'aps' => {
        'alert' => 'Dear users! Downloads are disabled until we resolve all legal issues. Sorry!'
      },
      'bfx' => {
        'act' => 'OK',
        'frc' => 1,
        'new' => 1,
        'loc' => 'US'
      }
    },

    # {
    #   'aps' => {
    #     'alert' => 'Check out our Flappy Chick Dark Side game!'
    #   },
    #   'bfx' => {
    #     'lnk' => 'https://itunes.apple.com/app/id821926670',
    #     'act' => 'Download',
    #     'sch' => 'fb598145903601399',
    #     # 'idx' => 'impressionid',
    #     'idc' => 'clickid'
    #   }
    # },

    # {
    #   'aps' => {
    #     'alert' => 'Hard times please rate!'
    #   },
    #   'bfx' => {
    #     'lnk' => 'http://google.com',
    #     'act' => 'Rate',
    #     'frc' => 1
    #   }
    # },
  ],

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
      # 'new' => 1,
    },
    { 
      'allowedHosts' => [
        'none', # disable downloads for US
      ],
      'loc' => 'US',
      # 'new' => 1,
    },
    {
      'disableitfs' => 1
    },
    {
      'noupgrade' => 1
    }
  ],

  # 'agreement' => 'I take responsibility for any downloads made within this app. I will not violate local copyright laws and use this app only for accessing legal content.',

  # legacy
  'com.bfx.motd' => '',
  'com.bfx.cii' => 132,
  'com.bfx.cri' => 200,

  # 'inhouse' => {
  #   'scheme' => 'qwem',
  #   'url' => 'itms-apps://itunes.apple.com/app/id670371346',
  #   'text' => 'Upgrade to PRO',
  #   'color' => 'EF4DB6',
  #   'backcolor' => '4A4A4A',
  # }
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
File.write(File.join(File.expand_path("../apps/qwe/"), DEFAULTS_FILE), defaults.to_json)
