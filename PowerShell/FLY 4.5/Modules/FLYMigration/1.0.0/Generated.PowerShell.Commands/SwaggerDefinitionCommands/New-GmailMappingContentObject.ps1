<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    

.DESCRIPTION
    

.PARAMETER Destination
    

.PARAMETER Mailbox
    

.PARAMETER MigrateArchivedMailboxOrFolder
    whether to migrate the archived mailbox/folder

#>
function New-GmailMappingContentObject
{
    param(    
        [Parameter(Mandatory = $true)]
        [AvePoint.PowerShell.FLYMigration.Models.GmailMigrationExchangeMailboxModel]
        $Destination,
    
        [Parameter(Mandatory = $true)]
        [string]
        $Mailbox,
    
        [Parameter(Mandatory = $false)]
        [switch]
        $MigrateArchivedMailboxOrFolder
    )
    
    $Object = New-Object -TypeName AvePoint.PowerShell.FLYMigration.Models.GmailMappingContentModel

    $PSBoundParameters.GetEnumerator() | ForEach-Object { 
        if(Get-Member -InputObject $Object -Name $_.Key -MemberType Property)
        {
            $Object.$($_.Key) = $_.Value
        }
    }

    if(Get-Member -InputObject $Object -Name Validate -MemberType Method)
    {
        $Object.Validate()
    }

    return $Object
}
