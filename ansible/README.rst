Ansible
=======

This is directory with `Ansible <http://docs.ansible.com/ansible/index.html>`__
script for deploying bot on Ubuntu.

Install
=======

At least ``1.6`` version needed (``apt: deb``).

.. code-block:: shell

  > sudo apt-get -y install ansible

.. seealso::

* `Latest release for Ubuntu <http://docs.ansible.com/ansible/intro_installation.html#latest-releases-via-apt-ubuntu>`__

Usage
=====

Copy ``hosts.example`` to ``hosts``, edit variables:

* Use real domain name or raw IP instead of ``hunterbot.example.com``
* Set user name on remote machine in ``ansible_ssh_user``
* Set password on remote machine in ``ansible_become_pass``

Edit ``hosts`` file and run script:

.. code-block:: shell

  > ansible-playbook -i ./hosts hunter-bot.yml

Description:

* ``-K`` sudo password on remote machine (not needed if ``ansible_become_pass`` used)
* ``-k`` password for ssh connection (not needed if ssh key used)
* ``-i`` inventory host file
