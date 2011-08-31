mongo_uri = CONFIG.mongo.uri

MONGO = if mongo_uri.present?
  uri  = URI.parse mongo_uri
  conn = Mongo::Connection.from_uri mongo_uri
  conn.db(uri.path.gsub(/^\//, ''))
else
  Mongo::Connection.new.db CONFIG.mongo.db
end
