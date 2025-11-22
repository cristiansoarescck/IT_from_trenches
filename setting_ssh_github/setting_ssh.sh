ssh-keygen -t rsa -b 4096 -C "your_email@exemple.com"

#"Enter a file in which to save the key": Press Enter to accept local e default name (/home/your_user/.ssh/id_rsa).

#"Enter passphrase (empty for no passphrase)": Enter a passphrase if you need.

# Copy the key 
# In the Key field, paste the complete content you copied in the previous step (it should start with ssh-rsa AAAA... and end with your email address).
# https://github.com/settings/keys
cat ~/.ssh/id_rsa.pub

# Enter password
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# Test connection
ssh -T git@github.com

# The output must be:
# Hi seu_usuario! You've successfully authenticated, but GitHub does not provide shell access.

# Setting up your
git config --global user.email "you@example.com"
git config --global user.name "Your Name"