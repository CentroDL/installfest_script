# SSH keys establish a secure connection between your computer and GitHub
# This script follows these instructions
# `https://help.github.com/articles/generating-ssh-keys`

# SSH Keygen
pause_awhile "Generating an SSH key to establish a secure connection between\
  your computer and GitHub. When you see the prompts\
  'Enter a file in which to save the key', or\
  'Enter passphrase (empty for no passphrase)',\
  just press Enter!"

ssh-keygen -t rsa -b 4096 -C $github_email
ssh-add ~/.ssh/id_rsa

public_key=$(cat ~/.ssh/id_rsa.pub)

# Upload to github
echo ""
echo "Uploading ssh key to GitHub..."

curl https://api.github.com/user/keys \
  -H "User-Agent: WDIInstallFest" \
  -H "Accept: application/vnd.github.v3+json" \
  -u "$github_name:$github_password" \
  -d '{"title":"WDI Installfest", "key":"'"$public_key"'"}'

# TODO (h4w5) add assertion around ... "ssh -T git@github.com"
echo ""
