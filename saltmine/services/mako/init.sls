#!yaml

# mako: make sure that mako is installed properly when minions start up.
# https://github.com/saltstack/salt-cloud/issues/230

# jinja is needed here due to account for package name differences 
# between debian and redhat.

# To have mako install when salt-minions start, add this to your 
# minion config file: 

  # startup_states: sls
  #   sls_list:
  #     - saltmine.services.mako

mako-pip:
  pip.installed:
    - name: Mako
    - require:
      - pkg: pip-pkg

pip-pkg:
  pkg.installed:
    - name: python-pip