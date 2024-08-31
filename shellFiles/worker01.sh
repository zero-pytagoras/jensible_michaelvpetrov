curl -X POST http://localhost/job/jensible/buildWithParameters \
  --user admin:t1 \
  --data-urlencode "REMOTE_HOST=worker01" \
  --data-urlencode "HOST_TYPE=server" \
  --data-urlencode "USERNAME=jenkins" \
  --data-urlencode "PASSWORD=jenkins" \
  --data-urlencode "SSH_KEY=./id_rsa.pub" \
  --data-urlencode "CONFIG_FILES=./ansible.cfg:/tmp/ansible.cfg"
