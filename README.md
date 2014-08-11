# My Ansible scripts to deploy Sharetribe

It installs:

- Ruby 2.1
- MySQL
- nginx
- Unicorn

1. Copy <code>vars/defaults.yml.example</code> to <code>vars/defaults.yml</code> and change the vars.
2. Rename `hosts.example` to `hosts` and change it to your hosts.

To run:

    $ ansible-playbook -i hosts ruby-webapp.yml -t swap,ruby,deploy,mysql,nginx,ufw,import_data
    $ <deploy your app> (HOST=XXX.XX.XX.XX bin/cap production deploy --trace)
    $ ansible-playbook -i hosts ruby-webapp.yml -t unicorn
