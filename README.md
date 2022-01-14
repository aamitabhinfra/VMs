# VMs
To create a VM do the following

```powershell
# source powershell script file
. .\create_vp.ps1

# execute the file with node name, vagrant box name, RAM, and CPU
# Only Node Name is mandatory
create-vm <node name> -box "generic/ubuntu2004" -RAM 2048 -CPU 2 
```