def present(name,
            root=None,
            source="salt://nginx/site.conf",
            __env__='base'):

    ret = {'name': name, 'result': None, 'comment': '', 'changes': {}}

    site_available_name = "/etc/nginx/sites-available/%s.conf" % name,
    context = dict(hostname=name, root=root)

    site_available = __salt__['file.managed'](site_available_name,
                                              source=source,
                                              context=context,
                                              __env__=__env__)

    return site_available
