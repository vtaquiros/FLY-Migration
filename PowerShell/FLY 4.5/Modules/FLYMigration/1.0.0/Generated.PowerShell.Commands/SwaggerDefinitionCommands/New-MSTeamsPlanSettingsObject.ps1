<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    

.DESCRIPTION
    

.PARAMETER PolicyId
    the id of migration policy

.PARAMETER Schedule
    the schedule for the migration

.PARAMETER MigrateMembers
    Whether to migrate Teams members

.PARAMETER OnlyMigrateDocumentsLibrary
    Whether to migrate only document libraries for the source team in the migration

.PARAMETER ConversationsMigrationSettings
    

.PARAMETER NameLabel
    Large migration projects are often phased over several waves, each containing multiple plans. 
To easily generate migration reports for each project or wave, we recommend the Example name format Business Unit_Wave_Plan

.PARAMETER DatabaseId
    the id of migration database

.PARAMETER MigrateGroupPlanner
    Whether to migrate Teams group planner
Only supported if the connection configured with an Office 365 Service Account

.PARAMETER PlanGroups
    

#>
function New-MSTeamsPlanSettingsObject
{
    param(    
        [Parameter(Mandatory = $false)]
        [string]
        $PolicyId,
    
        [Parameter(Mandatory = $false)]
        [AvePoint.PowerShell.FLYMigration.Models.SimpleSchedule]
        $Schedule,
    
        [Parameter(Mandatory = $false)]
        [switch]
        $MigrateMembers,
    
        [Parameter(Mandatory = $false)]
        [switch]
        $OnlyMigrateDocumentsLibrary,
    
        [Parameter(Mandatory = $false)]
        [AvePoint.PowerShell.FLYMigration.Models.ConversationsMigrationSettings]
        $ConversationsMigrationSettings,
    
        [Parameter(Mandatory = $true)]
        [AvePoint.PowerShell.FLYMigration.Models.PlanNameLabel]
        $NameLabel,
    
        [Parameter(Mandatory = $false)]
        [string]
        $DatabaseId,
    
        [Parameter(Mandatory = $false)]
        [switch]
        $MigrateGroupPlanner,
    
        [Parameter(Mandatory = $false)]
        [string[]]
        $PlanGroups
    )
    
    $Object = New-Object -TypeName AvePoint.PowerShell.FLYMigration.Models.MSTeamsPlanSettingsModel

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
