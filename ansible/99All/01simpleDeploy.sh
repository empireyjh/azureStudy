#!/bin/bash
set -euo pipefail

cd ../02vmWithARM
/bin/bash 00.azuredeploy.sh -g jinyooTestRG01 -n vmWithAnsible -u jinyoo -r jinyooVaultRG01 -v jinyooVault -s jinyooPub -c dummy-init.yaml
cd ../04CommonTasks
/usr/local/bin/ansible-playbook common_tasks.yml

