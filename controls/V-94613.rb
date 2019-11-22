control "V-94613" do
  title "Unauthorized floppy devices must be disconnected on the virtual
machine."
  desc  "Ensure that no device is connected to a virtual machine if it is not
required. For example, floppy, serial and parallel ports are rarely used for
virtual machines in a datacenter environment, and CD/DVD drives are usually
connected only temporarily during software installation."
  impact 0.5
  tag severity: nil
  tag gtitle: "SRG-OS-000480-VMM-002000"
  tag gid: "V-94613"
  tag rid: "SV-104443r1_rule"
  tag stig_id: "VMCH-65-000028"
  tag fix_id: "F-100731r1_fix"
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
go to Edit Settings. Review the VMs hardware and verify no floppy device is
connected.

or

From a PowerCLI command prompt while connected to the ESXi host or vCenter
server, run the following command:

Get-VM | Get-FloppyDrive | Select Parent, Name, ConnectionState

If a virtual machine has a floppy drive connected, this is a finding."
  tag fix: "If the floppy drive is required to be present, then from the
vSphere Client right-click the Virtual Machine and go to Edit Settings, make
sure the drive is not connected and will not \"Connect at power on\".

If the floppy drive is not required, then from the vSphere Client power off the
virtual machine, right-click the Virtual Machine and go to Edit Settings,
select the floppy drive and click the circle-x to remove then OK.

or

From a PowerCLI command prompt while connected to the ESXi host or vCenter
server, run the following command:

Get-VM \"VM Name\" | Get-FloppyDrive | Remove-FloppyDrive"
end

