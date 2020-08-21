<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    Run a new job by plan ID

.DESCRIPTION
    Run a new job of a plan by passing the ID of the plan and plan settings

.PARAMETER APIKey
    API key given by service owner.

.PARAMETER Id
    ID of the plan

.PARAMETER BaseUri
    Serivce host for the api.

.PARAMETER Settings
    job mode

#>
function Start-Office365GroupJobByPlan
{
    [OutputType([AvePoint.PowerShell.FLYMigration.Models.ServiceResponseStatusResultModel])]
    [CmdletBinding(DefaultParameterSetName='Office365GroupJobByPlan_Start')]
    param(    
        [Parameter(Mandatory = $true)]
        [string]
        $APIKey,
    
        [Parameter(Mandatory = $true, ParameterSetName = 'Office365GroupJobByPlan_Start')]
        [System.String]
        $Id,
    
        [Parameter(Mandatory = $true)]
        [string]
        $BaseUri,
    
        [Parameter(Mandatory = $true, ParameterSetName = 'Office365GroupJobByPlan_Start')]
        [AvePoint.PowerShell.FLYMigration.Models.Office365GroupPlanExecutionModel]
        $Settings
    )

    Begin 
    {
	    Initialize-PSSwaggerDependencies
        $tracerObject = $null
        if (('continue' -eq $DebugPreference) -or ('inquire' -eq $DebugPreference)) {
            $oldDebugPreference = $global:DebugPreference
			$global:DebugPreference = "continue"
            $tracerObject = New-PSSwaggerClientTracing
            Register-PSSwaggerClientTracing -TracerObject $tracerObject
        }
	}

    Process {
    
    $ErrorActionPreference = 'Stop'

    $NewServiceClient_params = @{
        FullClientTypeName = 'AvePoint.PowerShell.FLYMigration.FLYAPI'
    }

    $NewServiceClient_params['AuthenticationCommand'] = @'
    param([string]$APIKey) Get-AutoRestCredential -APIKey $APIKey -Location 'header' -Name 'api_key'
'@  
    $NewServiceClient_params['AuthenticationCommandArgumentList'] = $APIKey 
    $NewServiceClient_params['HostOverrideCommand'] = @'
    param([string]$BaseUri) return New-Object -TypeName System.Uri -ArgumentList @($BaseUri)
'@ 
    $NewServiceClient_params['BaseUri'] = $BaseUri
    $FLYAPI = New-ServiceClient @NewServiceClient_params
    
    
    

    $skippedCount = 0
    $returnedCount = 0
    if ('Office365GroupJobByPlan_Start' -eq $PsCmdlet.ParameterSetName) {
        Write-Verbose -Message 'Performing operation StartWithHttpMessagesAsync on $FLYAPI.'
        $taskResult = $FLYAPI.Office365GroupJobByPlan.StartWithHttpMessagesAsync($Id, $Settings)
    } else {
        Write-Verbose -Message 'Failed to map parameter set to operation method.'
        throw 'Module failed to find operation to execute.'
    }

    if ($TaskResult) {
        $result = $null
        $ErrorActionPreference = 'Stop'
                    
        $null = $taskResult.AsyncWaitHandle.WaitOne()
                    
        Write-Debug -Message "$($taskResult | Out-String)"


        if((Get-Member -InputObject $taskResult -Name 'Result') -and
           $taskResult.Result -and
           (Get-Member -InputObject $taskResult.Result -Name 'Body') -and
           $taskResult.Result.Body)
        {
            Write-Verbose -Message 'Operation completed successfully.'
            $result = $taskResult.Result.Body
            Write-Debug -Message "$($result | Out-String)"
            $result
        }
        elseif($taskResult.IsFaulted)
        {
            Write-Verbose -Message 'Operation failed.'
            if ($taskResult.Exception)
            {
                if ((Get-Member -InputObject $taskResult.Exception -Name 'InnerExceptions') -and $taskResult.Exception.InnerExceptions)
                {
                    foreach ($ex in $taskResult.Exception.InnerExceptions)
                    {
                        Write-Error -Exception $ex
                    }
                } elseif ((Get-Member -InputObject $taskResult.Exception -Name 'InnerException') -and $taskResult.Exception.InnerException)
                {
                    Write-Error -Exception $taskResult.Exception.InnerException
                } else {
                    Write-Error -Exception $taskResult.Exception
                }
            }
        } 
        elseif ($taskResult.IsCanceled)
        {
            Write-Verbose -Message 'Operation got cancelled.'
            Throw 'Operation got cancelled.'
        }
        else
        {
            Write-Verbose -Message 'Operation completed successfully.'
        }
        
    }
    }

    End {
        if ($tracerObject) {
            $global:DebugPreference = $oldDebugPreference
            Unregister-PSSwaggerClientTracing -TracerObject $tracerObject
        }
    }
}
