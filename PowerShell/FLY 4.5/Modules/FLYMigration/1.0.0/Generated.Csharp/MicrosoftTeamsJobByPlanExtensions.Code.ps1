// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.PowerShell.FLYMigration
{
    using Models;
    using System.Threading;
    using System.Threading.Tasks;

    /// <summary>
    /// Extension methods for MicrosoftTeamsJobByPlan.
    /// </summary>
    public static partial class MicrosoftTeamsJobByPlanExtensions
    {
            /// <summary>
            /// Run a new job by plan ID
            /// </summary>
            /// <remarks>
            /// Run a new job of a plan by passing the ID of the plan and plan settings
            /// </remarks>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='id'>
            /// ID of the plan
            /// </param>
            /// <param name='settings'>
            /// job mode
            /// </param>
            public static ServiceResponseStatusResultModel Start(this IMicrosoftTeamsJobByPlan operations, string id, MSTeamsPlanExecutionModel settings)
            {
                return operations.StartAsync(id, settings).GetAwaiter().GetResult();
            }

            /// <summary>
            /// Run a new job by plan ID
            /// </summary>
            /// <remarks>
            /// Run a new job of a plan by passing the ID of the plan and plan settings
            /// </remarks>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='id'>
            /// ID of the plan
            /// </param>
            /// <param name='settings'>
            /// job mode
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task<ServiceResponseStatusResultModel> StartAsync(this IMicrosoftTeamsJobByPlan operations, string id, MSTeamsPlanExecutionModel settings, CancellationToken cancellationToken = default(CancellationToken))
            {
                using (var _result = await operations.StartWithHttpMessagesAsync(id, settings, null, cancellationToken).ConfigureAwait(false))
                {
                    return _result.Body;
                }
            }

    }
}
