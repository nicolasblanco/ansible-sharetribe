# My Ansible scripts to deploy Sharetribe

This is perfect to install Sharetribe on a virtual instance, like DigitalOcean. It was tested on Ubuntu 14.04 LTS.

What it does briefly:

- Configure 1GB of swap
- Install Ruby 2.1 (from Brightbox APT repository) and application dependencies
- Install unattended-upgrades so that security updates are installed automatically
- Create a `deploy` user and create the default application Capistrano architecture in `/data/sharetribe`
- Install MySQL and import default application structure
- Install Nginx with a default enabled site linked to the application Unicorn
- Configure UFW so that only SSH and HTTP/HTTPS are authorized from outside
- Install Unicorn scripts, so you can start/stop Unicorn (using commands `start unicorn` and `stop unicorn`)

## How to use?

1. Copy <code>vars/defaults.yml.example</code> to <code>vars/defaults.yml</code> and change the vars.
2. Rename `hosts.example` to `hosts` and change it to your hosts.

To run:

    $ ansible-playbook -i hosts ruby-webapp.yml -t swap,ruby,deploy,mysql,nginx,ufw,import_data
    $ <deploy your app> (HOST=XXX.XX.XX.XX bin/cap production deploy --trace)
    $ ansible-playbook -i hosts ruby-webapp.yml -t unicorn
