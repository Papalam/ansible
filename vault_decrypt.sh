#!/bin/bash

ansible-vault decrypt group_vars/all/vault.yml --vault-id volodya_tm@.pass
ansible-vault decrypt group_vars/partner_soyuz/databases.yml --vault-id volodya_tm@.pass
ansible-vault decrypt group_vars/ppl/databases.yml --vault-id volodya_tm@.pass

# ansible-vault decrypt roles/build_web_one_s/templates/*.j2 --vault-id volodya_tm@.pass
