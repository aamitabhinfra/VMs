function Create-VM {

    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Name,

        [Parameter(Mandatory=$false)]
        [string]$BOX = "generic/ubuntu2004", # Vagrant Image

        [Parameter(Mandatory=$false)]
        [int]$RAM = 2048,

        [Parameter(Mandatory=$false)]
        [int]$CPU = 2
    )

    Set-StrictMode -Version 'Latest'

    $env:VAGRANT_NAME = $Name
    $env:VAGRANT_BOX = $BOX
    $env:VAGRANT_RAM = $RAM
    $env:VAGRANT_CPU = $CPU

    vagrant up
}