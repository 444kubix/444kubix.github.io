require 'json'
require 'colorize'
require 'FileUtils'
# build_dir = File.expand_path("./source/faed/")
# unless File.directory?(build_dir)
#   FileUtils.mkdir_p(build_dir)
# end
# filePath = build_dir + '/' + DEFAULTS_FILE
# puts "writing #{filePath} #{defaults}" #.colorize(:light_green)

DEFAULTS_FILE = 'defaults.json'

defaults = { # do not use dots
  'msgs' => [
    # {
    #   'aps' => {
    #     'alert' => 'Check out our Flappy Chick Dark Side game!'
    #   },
    #   'bfx' => {
    #     'lnk' => 'https://google.ru',
    #     'act' => 'Download',
    #     'sch' => 'fb598145903601399',
    #     'lng' => 'en'
    #   },
    # },
    # {
    #   'aps' => {
    #     'alert' => 'русское сообщение!!'
    #   },
    #   'bfx' => {
    #     'lng' => 'ru'
    #   },
    # },
  ],
}
# File.write(build_dir + '/' + DEFAULTS_FILE, defaults.to_plist)
# File.write(build_dir + '/' + DEFAULTS_FILE, defaults.to_json)

# build_dir = File.expand_path("./source/localizable/vkm")
# unless File.directory?(build_dir)
#   FileUtils.mkdir_p(build_dir)
# end
def bd(path)
  dir = File.expand_path(path)
  unless File.directory?(dir)
    FileUtils.mkdir_p(dir)
    puts "created dir at path #{dir}".colorize(:light_yellow)
  end
  dir
end


filePath = File.join(bd("./source/"), DEFAULTS_FILE)
puts "writing #{filePath} #{defaults}".colorize(:light_green)
# File.write(filePath, defaults.to_plist)
File.write(filePath, defaults.to_json)

filePath = File.join(bd("../apps/vkm/"), DEFAULTS_FILE)
puts "writing #{filePath} #{defaults}".colorize(:light_green)
File.write(filePath, defaults.to_json)

