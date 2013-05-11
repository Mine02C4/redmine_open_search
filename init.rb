require 'redmine'

require_dependency 'hooks'

Redmine::Plugin.register :redmine_open_search do
  name 'Redmine Open Search plugin'
  author 'Mine02C4'
  description 'This is a plugin for Redmine to add support for OpenSearch.'
  version '0.1.0'
  url 'https://github.com/Mine02C4/redmine_open_search'
  author_url 'http://blog.mine-studio.com/'
end
