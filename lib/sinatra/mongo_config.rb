require 'sinatra/base'
require 'mongo'

module Sinatra
  module MongoConfig
    
    module Helpers
      def database
        @database ||= init_database
      end
      
      private

      def init_database
        db = Mongo::Connection.new(settings.mongo_host, settings.mongo_port).db(settings.mongo_db)
        db.authenticate(settings.mongo_user, settings.mongo_password) if settings.mongo_user && settings.mongo_password
        db
      end
    end
    
    def self.registered(app)
      app.helpers MongoConfig::Helpers
      
      app.set :mongo_host, 'localhost'
      app.set :mongo_port, Mongo::Connection::DEFAULT_PORT
      app.set :mongo_db, 'test'
      app.set :mongo_user, nil
      app.set :mongo_password, nil
    end
  end
  
  register MongoConfig
end