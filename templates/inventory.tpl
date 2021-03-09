---
${group}:
  hosts:
    ${host}:
      ansible_host: ${ip}
  vars:
    ansible_ssh_user: ${user}
    ansible_ssh_private_key_file: ${ssh_key_own}
    ansible_python_interpreter: /usr/bin/python3
