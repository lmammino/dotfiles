# SSH agent

# Tools that read SSH_AUTH_SOCK directly (docker build --ssh, for one) find the 1Password agent
# only if the variable points at its socket; the ssh config's IdentityAgent does not reach them.
# Guarded, so a machine without 1Password keeps the system agent.
set -l onepassword_agent "$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
if test -S "$onepassword_agent"
    set -gx SSH_AUTH_SOCK "$onepassword_agent"
end
