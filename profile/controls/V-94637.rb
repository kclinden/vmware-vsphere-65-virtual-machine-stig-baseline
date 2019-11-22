control "V-94637" do
  title "System administrators must use templates to deploy virtual machines
whenever possible."
  desc  "By capturing a hardened base operating system image (with no
applications installed) in a template, ensure all virtual machines are created
with a known baseline level of security. Then use this template to create
other, application-specific templates, or use the application template to
deploy virtual machines. Manual installation of the OS and applications into a
VM introduces the risk of misconfiguration due to human or process error."
  impact 0.3
  tag severity: nil
  tag gtitle: "SRG-OS-000480-VMM-002000"
  tag gid: "V-94637"
  tag rid: "SV-104467r1_rule"
  tag stig_id: "VMCH-65-000042"
  tag fix_id: "F-100755r1_fix"
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
  tag check: "Ask the SA if hardened, patched templates are used for VM
creation, properly configured OS deployments, including applications both
dependent and non-dependent on VM-specific configurations.

If hardened, patched templates are not used for VM creation, this is a finding."
  tag fix: "Create hardened virtual machine templates to use for OS
deployments."
end

