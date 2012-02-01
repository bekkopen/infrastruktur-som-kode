Sammenligning av konfigurasjonssystemer
---------------------------------------

* [Puppet][p]
* [Chef][c]
* [Salt][s]
* [Cdist][cd]

[p]: http://puppetlabs.com
[c]: http://opscode.com/chef
[s]: http://saltstack.org/
[cd]: http://www.nico.schottelius.org/software/cdist/


Usecase
-------

1. Installer nginx.
2. Konfigurer en virtual host gitt parameterene:
    - `hostname`
    - `root`
3. Plasser en index.html fil med innhold i `root`.


Bootstrap
---------

    wget -O- http://git.io/bootstrap | sh


TODO
----

    [ ] Copy over pubkey in bootstrap.
    [ ] Extend example if needed (owner of /var/www)
