control "V-94651" do
  title "Encryption must be enabled for vMotion on the virtual machine."
  desc  "vMotion migrations in vSphere 6.0 and earlier transferred working
memory and CPU state information in clear text over the vMotion network. As of
vSphere 6.5 this transfer can be transparently encrypted using 256bit AES-GCM
with negligible performance impact. vSphere 6.5 enables encrypted vMotion by
default as 'Opportunistic', meaning that encrypted channels are used where
supported but the operation will continue in plain text where encryption is not
supported. For example when vMotioning between two 6.5 hosts encryption will
always be utilized but since 6.0 and earlier releases do not support this
feature vMotion from a 6.5 host to a 6.0 host would be allowed but would not be
encrypted. If this finding is set to 'Required' then vMotions to unsupported
hosts will fail. This setting must be set to 'Opportunistic' or 'Required'."
  impact 0.5
  tag severity: nil
  tag gtitle: "SRG-OS-000480-VMM-002000"
  tag gid: "V-94651"
  tag rid: "SV-104481r1_rule"
  tag stig_id: "VMCH-65-000049"
  tag fix_id: "F-100769r1_fix"
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
  tag check: "From the vSphere Web Client select the Virtual Machine, right
click and go to Edit Settings >> VM Options Tab >> Encryption >> Encrypted
vMotion.

or

From a PowerCLI command prompt while connected to the ESXi host or vCenter
server, run the following command:

Get-VM | Where {($_.ExtensionData.Config.MigrateEncryption -ne
\"opportunistic\") -and ($_.ExtensionData.Config.MigrateEncryption -ne
\"required\")}

If the setting does not have a value of \"Opportunistic\" or \"Required\", this
is a finding."
  tag fix: "From the vSphere Client select the Virtual Machine, right click and
go to Edit Settings >> VM Options Tab >> Encryption >> Encrypted vMotion. Set
the value to \"Opportunistic\" or \"Required\"."
end

