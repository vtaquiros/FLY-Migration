<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    

.DESCRIPTION
    

.PARAMETER IntervalType
    

.PARAMETER Interval
    The interval of the schedule, if intervalType is not 'OnlyOnce', this field is required,

.PARAMETER OccurrencesValue
    Stop the recurrence after a specified number of occurrences, 
if schedule endType is 'Occurrences', this field is required,

.PARAMETER EndType
    

.PARAMETER StartTime
    The start time to run the migration job. Note that the start time cannot be earlier than the current time.
The time follows the W3C datetime format. 
Example:
2018-11-01T08:15:30-05:00 corresponds to November 1,2018,8:15:30 am, US Eastern Standard Time, 
2018-11-01T13:15:30Z corresponds the same instant and "Z" reprents time in UTC(Coordinated Universal Time)

.PARAMETER EndTime
    The time to end the recurrence, 
If schedule endType is 'Time', this field is required.
The time follows the W3C datetime format. 
Example:
2018-11-01T08:15:30-05:00 corresponds to November 1,2018,8:15:30 am, US Eastern Standard Time, 
2018-11-01T13:15:30Z corresponds the same instant and "Z" reprents time in UTC(Coordinated Universal Time)

#>
function New-ScheduleObject
{
    param(    
        [Parameter(Mandatory = $true)]
        [ValidateSet('OnlyOnce', 'Hourly', 'Daily', 'Weekly')]
        [string]
        $IntervalType,
    
        [Parameter(Mandatory = $false)]
        [int32]
        $Interval,
    
        [Parameter(Mandatory = $false)]
        [int32]
        $OccurrencesValue,
    
        [Parameter(Mandatory = $false)]
        [ValidateSet('NoEnd', 'Occurrences', 'Time')]
        [string]
        $EndType,
    
        [Parameter(Mandatory = $true)]
        [string]
        $StartTime,
    
        [Parameter(Mandatory = $false)]
        [string]
        $EndTime
    )
    
    $Object = New-Object -TypeName AvePoint.PowerShell.FLYMigration.Models.ScheduleModel

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
