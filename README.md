# My Ansible scripts to deploy Sharetribe

**Bastardised from https://github.com/dodecaphonic/ansible-rails-app**

It installs:

- Ruby 2.1
- MySQL
- nginx
- Puma (jungle)

1. Change the app name and deploy directory in <code>vars/defaults.yml</code>.
2. Rename `hosts.example` to `hosts` and change it to your hosts.

To run:

    $ ansible-playbook -i hosts ruby-webapp.yml -t swap,ruby,deploy,mysql,nginx,ufw,import_data
    $ <deploy your app> (BRANCH=puma HOST=XXX.XX.XX.XX bin/cap production deploy --trace)
    $ ansible-playbook -i hosts ruby-webapp.yml -t puma
