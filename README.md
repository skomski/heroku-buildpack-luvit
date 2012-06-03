Heroku buildpack: luvit
=======================

This is a [Heroku buildpack](http://devcenter.heroku.com/articles/buildpacks) for luvit apps.

Usage
-----

    $ ls
    package.lua Procfile server.lua

    $ heroku create --stack cedar --buildpack http://github.com/Skomski/heroku-buildpack-luvit.git

    $ git push heroku master
    ...
    -----> Heroku receiving push
    -----> Fetching custom buildpack... done
    -----> luvit app detected
    -----> Fetching Luvit version 0.3.1
    -----> Discovering process types
           Procfile declares types -> web
    -----> Compiled slug size is 1.1MB

The buildpack will detect your luvit app if it has the file `package.lua` in the root.

Hacking
-------

To use this buildpack, fork it on Github.  Push up changes to your fork, then create a test app with `--buildpack <your-github-url>` and push to it.
