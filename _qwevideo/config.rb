require 'json'
require 'colorize'

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
      'disabledMimes' => [
        'public.audio'
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
def writeDefaultsToPath(defaults, path)
  build_dir = File.expand_path(path)
  unless File.directory?(build_dir)
    FileUtils.mkdir_p(build_dir)
  end
  filePath = File.join(build_dir, DEFAULTS_FILE)
  puts "writing to #{filePath} #{defaults}".colorize(:light_green)
  File.write(filePath, defaults.to_json)
end

writeDefaultsToPath(defaults, "./source/")
writeDefaultsToPath(defaults, "../apps/#{APP_NAME}/")




RT = "/apps/#{APP_NAME}"
@mnt_root = ''

set :build_dir, "..#{RT}"

activate :livereload
activate :i18n, :path => "/:locale/", :mount_at_root => false
activate :directory_indexes

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

@email = "qwedownloader@boomfox.ru"

# Build-specific configuration
configure :build do
  @mnt_root = RT
  # For example, change the Compass output style for deployment
  activate :minify_css
  # Minify Javascript on build
  activate :minify_javascript
  # Use relative URLs
  activate :relative_assets
end
