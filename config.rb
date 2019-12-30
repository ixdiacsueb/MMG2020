# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end


activate :livereload,
         :livereload_css_target => nil

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

set :haml, :format => :html5
set :markdown_engine, :kramdown


set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir, 'fonts'

set :site_title, "The Master of Arts (MA) in Multimedia with a Concentration in Interaction Design"
set :address, "California State University, 25800 Carlos Bee Blvd. Hayward, CA 94542-3035"
set :deptPhone, "1(510) 885-3111"
set :deptEmail, "multimedia@csueastbay.edu"

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings


# activate :deploy do |deploy|
#   deploy.method = :git
#   # Optional Settings
#     deploy.remote   = 'mmg2020' # remote name or git url, default: origin
#   # deploy.branch   = 'custom-branch' # default: gh-pages
#   # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
#   # deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
# end


configure :build do
   activate :minify_css
   activate :minify_javascript
   activate :minify_html
   set :build_dir, 'docs'
 end
