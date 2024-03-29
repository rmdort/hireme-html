###
# Compass
###

# Susy grids in Compass
# First: gem install susy --pre
# require 'susy'

require 'compass-normalize'
require 'modular-scale'
require 'compass-recipes'
require 'stitch'

activate :livereload

# Change Compass configuration
compass_config do |config|
 config.output_style = :compact
 config.css_dir = "source/assets/css"
 config.sass_dir = "source/assets/sass"
 config.images_dir = "assets/img"
 config.javascripts_dir = "assets/js"
end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
#page "/login.html", :layout => :plain
#page "/register.html", :layout => :plain
#
# A path which all have the same layout
with_layout :plain do
   page "/ajax/*"
 end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end


page "/assets/sass/main.css", :layout => false

set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/img'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end