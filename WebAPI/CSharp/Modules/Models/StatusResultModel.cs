// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.Migration.Api.Models
{
    using Newtonsoft.Json;
    using System.Linq;

    public partial class StatusResultModel
    {
        /// <summary>
        /// Initializes a new instance of the StatusResultModel class.
        /// </summary>
        public StatusResultModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the StatusResultModel class.
        /// </summary>
        /// <param name="status">Http Status Code</param>
        public StatusResultModel(string status = default(string))
        {
            Status = status;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets http Status Code
        /// </summary>
        [JsonProperty(PropertyName = "status")]
        public string Status { get; private set; }

    }
}
