// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.Migration.Api.Models
{
    using Newtonsoft.Json;
    using System.Collections;
    using System.Collections.Generic;
    using System.Linq;

    public partial class PageResultViewModelListJobSummaryModel
    {
        /// <summary>
        /// Initializes a new instance of the
        /// PageResultViewModelListJobSummaryModel class.
        /// </summary>
        public PageResultViewModelListJobSummaryModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the
        /// PageResultViewModelListJobSummaryModel class.
        /// </summary>
        /// <param name="firstPage">Get first page</param>
        /// <param name="lastPage">Get last page</param>
        /// <param name="previousPage">Get previous page</param>
        /// <param name="nextPage">Get next page</param>
        public PageResultViewModelListJobSummaryModel(IList<JobSummaryModel> data = default(IList<JobSummaryModel>), string firstPage = default(string), string lastPage = default(string), string previousPage = default(string), string nextPage = default(string))
        {
            Data = data;
            FirstPage = firstPage;
            LastPage = lastPage;
            PreviousPage = previousPage;
            NextPage = nextPage;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "data")]
        public IList<JobSummaryModel> Data { get; private set; }

        /// <summary>
        /// Gets or sets get first page
        /// </summary>
        [JsonProperty(PropertyName = "firstPage")]
        public string FirstPage { get; set; }

        /// <summary>
        /// Gets or sets get last page
        /// </summary>
        [JsonProperty(PropertyName = "lastPage")]
        public string LastPage { get; set; }

        /// <summary>
        /// Gets or sets get previous page
        /// </summary>
        [JsonProperty(PropertyName = "previousPage")]
        public string PreviousPage { get; set; }

        /// <summary>
        /// Gets or sets get next page
        /// </summary>
        [JsonProperty(PropertyName = "nextPage")]
        public string NextPage { get; set; }

    }
}
