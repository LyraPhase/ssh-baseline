# copyright: 2022, James Cuzella

title "LyraPhase SSH Baseline"

sshd_custom_path = '/etc/ssh'

# Include all ssh-baseline except forwarding & PrintLastLog options
require_controls 'ssh-baseline' do
  skip_control 'sshd-39' # Server: Disable TCP forwarding
  skip_control 'sshd-40' # Server: Disable Agent forwarding
  skip_control 'sshd-42' # Server: Disable X11Forwarding
  skip_control 'sshd-45' # Server: PrintLastLog
end

## LyraPhase Control Customizations
# Override selected convenience SSHd control checks
# SSHD Configuration AllowTcpForwarding is expected to eq "yes"
sshd_tcpforwarding = 'yes'
control 'sshd-39' do
  impact 0.3
  title 'Server: Disable TCP forwarding'
  desc 'If you use TCP forwarding in an uncontrolled manner then you can bypass the firewalls. However this feature is a convenient and secure way to connect to services through a bastion host in many network settings.'
  describe sshd_config("#{sshd_custom_path}/sshd_config") do
    its('AllowTcpForwarding') { should eq(sshd_tcpforwarding) }
  end
end


# SSHD Configuration AllowAgentForwarding is expected to eq "yes"
sshd_agentforwarding = 'yes'
control 'sshd-40' do
  impact 0.3
  title 'Server: Disable Agent forwarding'
  desc "Users with the ability to bypass file permissions on the remote host (for the agent's UNIX-domain socket) can access the local agent through the forwarded connection. An attacker cannot obtain key material from the agent, however they can perform operations on the keys that enable them to authenticate using the identities loaded into the agent. However, this is a very useful and convenient feature for remote secure access through a Bastion Host using secure keys."
  describe sshd_config("#{sshd_custom_path}/sshd_config") do
    its('AllowAgentForwarding') { should eq(sshd_agentforwarding) }
  end
end

# SSHD Configuration X11Forwarding is expected to eq "yes"
sshd_x11forwarding = 'yes'
control 'sshd-42' do
  impact 0.3
  title 'Server: Disable X11Forwarding'
  desc 'Prevent X11 forwarding by default, as it can be used in a limited way to enable attacks. However, this feature is a convenient way to run X11 GUI applications remotely over the LAN.'
  describe sshd_config("#{sshd_custom_path}/sshd_config") do
    its('X11Forwarding') { should eq(sshd_x11forwarding) }
  end
end

# SSHD Configuration PrintLastLog is expected to eq "yes"
sshd_printlastlog = 'yes'
control 'sshd-45' do
  impact 1.0
  title 'Server: PrintLastLog'
  desc 'This tells the SSH daemon to print out information about the last time you logged in. This is a convenient feature to determine your last login IP and time.'
  describe sshd_config("#{sshd_custom_path}/sshd_config") do
    its('PrintLastLog') { should eq(sshd_printlastlog) }
  end
end
