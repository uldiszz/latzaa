Slim::Engine.options[:format] = :html
Slim::Engine.options[:pretty] = false

activate :sprockets
activate :i18n, mount_at_root: :lv
activate :directory_indexes
activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

helpers do
  def url_for(path_or_resource, options={})
    url = super
    if path_or_resource != '/index.html' && I18n.default_locale != locale
      "/#{locale}#{url}"
    else
      url
    end
  end

  def icon(name, options = {})
    svg "icon-#{name}", options
  end

  def svg(filename, options = {})
    file = File.read(File.expand_path("../source/images/#{filename}.svg", __FILE__))
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css "svg"
    svg["class"] = options[:class] if options[:class].present?
    svg.search('title').each { |n| n.remove }
    doc
  end
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript
end

# activate :deploy do |deploy|
#   deploy.deploy_method = :git
# end
