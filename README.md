Heroku buildpack: luvit
=======================

This is a [Heroku buildpack](http://devcenter.heroku.com/articles/buildpacks) for luvit apps.

Usage
-----

    $ ls
    configure  Makefile  myapp.c

    $ heroku create --stack cedar --buildpack http://github.com/skomski/heroku-buildpack-luvit.git

    $ git push heroku master
    ...
    -----> Heroku receiving push
    -----> Fetching custom buildpack
    -----> Luvit app detected
    -----> Configuring
           Looking for somelibrary… ok
    -----> Compiling with Make
           gcc -o myapp myapp.c

The buildpack will detect your luvit app if it has the file `package.lua` in the root.

Hacking
-------

To use this buildpack, fork it on Github.  Push up changes to your fork, then create a test app with `--buildpack <your-github-url>` and push to it.
