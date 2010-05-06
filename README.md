Sinatra-Mongo-Config
====================

A simple wrapper for instantiating a MongoDB connection in Sinatra

Installing
----------

gem install sinatra-mongo-config

Usage
-----

Set some properties so that a connection can be made to your MongoDB database. You then have access to a database object which represents your MongoDB database.

The complete list of parameters is:

    :mongo_db
    :mongo_host
    :mongo_port
    :mongo_user
    :mongo_password

The only property you really need to set is mongo_db, everything else has sensible defaults for development.

Example
------

    configure do
        set :mongo_db, 'ethangunderson'
    end

    configure :production do
        set :mongo_host, 'flame.local.mongohq.com'
        set :mongo_user, 'foo'
        set :mongo_password, 'bar'
    end

    get '/blog' do
        @posts = database['posts'].find()
        haml :blog
    end
