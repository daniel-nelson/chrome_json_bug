$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'rubygems'
require 'bundler'
Bundler.require

set :views, File.join(File.dirname(__FILE__), 'views')

get "/docs" do
  if request.accept.include?('application/json')
    content_type :json
    '[{"_id":"4ef3accbfa9dcb3a91000004","accent_color":null,"account_id":"4ef3acf1fa9dcb3a9100000a","avatar_id":"4ef3accbfa9dcb3a91000002","background_color":null,"background_image_id":null,"contents":{},"created_at":"2011-12-09T00:50:05-06:00","description":null,"lowercase_slug":"test/hello/world","notify_on_open":false,"password":null,"published":true,"slug":"test/hello/world","theme_id":null,"title":"Hello world","updated_at":"2011-12-23T00:50:05-06:00","published_doc_url":"http://example.com/test/hello/world"}]'
  else
    erb :index
  end
end
