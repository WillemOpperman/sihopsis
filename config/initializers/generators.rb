Rails.application.config.generators do |g|

  g.fixture_replacement :factory_girl
  g.helper_specs = false
  g.stylesheets = false
  g.template_engine :haml
  g.view_specs = false
  g.jbuilder = false
  g.helper = false
  g.javascripts = false

end
