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
    /// Extension methods for GoogleDriveJobByPlan.
    /// </summary>
    public static partial class GoogleDriveJobByPlanExtensions
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
            /// <param name='planSettings'>
            /// job mode
            /// </param>
            public static ServiceResponseStatusResultModel Start(this IGoogleDriveJobByPlan operations, string id, PlanExecutionModel planSettings)
            {
                return operations.StartAsync(id, planSettings).GetAwaiter().GetResult();
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
            /// <param name='planSettings'>
            /// job mode
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task<ServiceResponseStatusResultModel> StartAsync(this IGoogleDriveJobByPlan operations, string id, PlanExecutionModel planSettings, CancellationToken cancellationToken = default(CancellationToken))
            {
                using (var _result = await operations.StartWithHttpMessagesAsync(id, planSettings, null, cancellationToken).ConfigureAwait(false))
                {
                    return _result.Body;
                }
            }

    }
}
