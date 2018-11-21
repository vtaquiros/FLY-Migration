// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.Migration.Api.Models
{
    using Microsoft.Rest;
    using Newtonsoft.Json;
    using System.Linq;

    public partial class PlanExecutionModel
    {
        /// <summary>
        /// Initializes a new instance of the PlanExecutionModel class.
        /// </summary>
        public PlanExecutionModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the PlanExecutionModel class.
        /// </summary>
        /// <param name="migrationType">Migration job mode, full or
        /// incremental. Possible values include: 'Incremental', 'Full'</param>
        public PlanExecutionModel(string migrationType)
        {
            MigrationType = migrationType;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets migration job mode, full or incremental. Possible
        /// values include: 'Incremental', 'Full'
        /// </summary>
        [JsonProperty(PropertyName = "migrationType")]
        public string MigrationType { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public virtual void Validate()
        {
            if (MigrationType == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "MigrationType");
            }
        }
    }
}
