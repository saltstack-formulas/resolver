#####################################
##### Salt Formula For Resolver #####
#####################################

# Resolver Configuration
/etc/resolv.conf:
  file.managed:
    - user: root
    - group: root
    - mode: '0644'
    - source: salt://resolver/files/resolv.conf
    - template: jinja
    - defaults:
        nameservers: ['8.8.8.8','8.8.4.4']
        searchpath: 'example.com'
