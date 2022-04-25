#!/bin/bash

ansible-vault encrypt group_vars/all/vault.yml --vault-id volodya_tm@.pass
ansible-vault encrypt group_vars/partner_soyuz/databases.yml --vault-id volodya_tm@.pass
ansible-vault encrypt group_vars/ppl/databases.yml --vault-id volodya_tm@.pass

# ansible-vault encrypt roles/build_web_one_s/templates/*.j2 --vault-id volodya_tm@.pass
