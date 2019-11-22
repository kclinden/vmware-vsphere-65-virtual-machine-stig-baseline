control "V-94615" do
  title "Unauthorized CD/DVD devices must be disconnected on the virtual
machine."
  desc  "Ensure that no device is connected to a virtual machine if it is not
required. For example, floppy, serial and parallel ports are rarely used for
virtual machines in a datacenter environment, and CD/DVD drives are usually
connected only temporarily during software installation."
  impact 0.3
  tag severity: nil
  tag gtitle: "SRG-OS-000480-VMM-002000"
  tag gid: "V-94615"
  tag rid: "SV-104445r1_rule"
  tag stig_id: "VMCH-65-000029"
  tag fix_id: "F-100733r2_fix"
  tag cci: ["CCI-000366"]
  tag nist: ["CM-6 b", "Rev_4"]
  tag false_negatives: nil
  tag false_positives: nil
  tag documentable: false
  tag mitigations: nil
  tag severity_override_guidance: false
  tag potential_impacts: nil
  tag third_party_tools: nil
  tag mitigation_controls: nil
  tag responsibility: nil
  tag ia_controls: nil
  tag check: "From the vSphere Web Client right-click the Virtual Machine and
go to Edit Settings. Review the VMs hardware and verify no CD/DVD drives are
connected.

or

From a PowerCLI command prompt while connected to the ESXi host or vCenter
server, run the following command:

Get-VM | Get-CDDrive | Where {$_.extensiondata.connectable.connected -eq $true}
| Select Parent,Name

If a virtual machine has a CD/DVD drive connected other than temporarily, this
is a finding."
  tag fix: "From the vSphere Web Client right-click the Virtual Machine and go
to Edit Settings. Select the CD/DVD drive and uncheck \"Connected\" and
\"Connect at power on\" and remove any attached ISOs.

or

From a PowerCLI command prompt while connected to the ESXi host or vCenter
server, run the following command:

Get-VM \"VM Name\" | Get-CDDrive | Set-CDDrive -NoMedia"
end

