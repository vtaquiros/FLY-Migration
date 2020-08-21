// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.PowerShell.FLYMigration
{
    using Microsoft.Rest;
    using Models;
    using System.Collections;
    using System.Collections.Generic;
    using System.Threading;
    using System.Threading.Tasks;

    /// <summary>
    /// DropboxJobsByPlan operations.
    /// </summary>
    public partial interface IDropboxJobsByPlan
    {
        /// <summary>
        /// Get jobs by plan ID
        /// </summary>
        /// <remarks>
        /// Return a list of jobs of the plan
        /// </remarks>
        /// <param name='id'>
        /// ID of the plan
        /// </param>
        /// <param name='pageNumber'>
        /// which page of jobs to query
        /// </param>
        /// <param name='pageSize'>
        /// the number of jobs in one page
        /// </param>
        /// <param name='customHeaders'>
        /// The headers that will be added to request.
        /// </param>
        /// <param name='cancellationToken'>
        /// The cancellation token.
        /// </param>
        /// <exception cref="Microsoft.Rest.HttpOperationException">
        /// Thrown when the operation returned an invalid status code
        /// </exception>
        /// <exception cref="Microsoft.Rest.SerializationException">
        /// Thrown when unable to deserialize the response
        /// </exception>
        /// <exception cref="Microsoft.Rest.ValidationException">
        /// Thrown when a required parameter is null
        /// </exception>
        Task<HttpOperationResponse<ServiceResponsePageResultViewModelListJobSummaryModel>> FindWithHttpMessagesAsync(string id, int? pageNumber = default(int?), int? pageSize = default(int?), Dictionary<string, List<string>> customHeaders = null, CancellationToken cancellationToken = default(CancellationToken));
    }
}
