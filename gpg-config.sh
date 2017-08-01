
# Ensure no-tty is set so IDEA can sign commits
grep -v no-tty ~/.gnupg/gpg.conf || echo no-tty >>  ~/.gnupg/gpg.conf
