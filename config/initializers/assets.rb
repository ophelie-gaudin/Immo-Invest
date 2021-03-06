# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

Rails.application.config.assets.precompile += %w[ 
  navbar.js 
  index.bundle.js 
  flash.js 
  registration.js 
  session.js 
  form.js
  show.js
]

Rails.application.config.assets.precompile += %w[ 
  decohome(1).jpg
  decohome.jpg
  giphy_failure.gif
  giphy_success.gif
  logo1.svg
  logo.svg
  404.jpg
  500.jpg
]

Rails.application.config.assets.precompile += %w[ 
  bootstrap-icons.woff
  bootstrap-icons.woff2
]

Rails.application.config.assets.precompile += %w[ index.bundle.css.map ]

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )