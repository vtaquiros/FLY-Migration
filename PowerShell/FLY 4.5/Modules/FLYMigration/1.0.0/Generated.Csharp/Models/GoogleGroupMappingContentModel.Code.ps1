// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.PowerShell.FLYMigration.Models
{
    using Microsoft.Rest;
    using Newtonsoft.Json;
    using System.Linq;

    public partial class GoogleGroupMappingContentModel
    {
        /// <summary>
        /// Initializes a new instance of the GoogleGroupMappingContentModel
        /// class.
        /// </summary>
        public GoogleGroupMappingContentModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the GoogleGroupMappingContentModel
        /// class.
        /// </summary>
        public GoogleGroupMappingContentModel(string mailbox, GoogleGroupMigrationExchangeMailboxModel destination)
        {
            Mailbox = mailbox;
            Destination = destination;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "mailbox")]
        public string Mailbox { get; set; }

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "destination")]
        public GoogleGroupMigrationExchangeMailboxModel Destination { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public virtual void Validate()
        {
            if (Mailbox == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "Mailbox");
            }
            if (Destination == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "Destination");
            }
            if (Destination != null)
            {
                Destination.Validate();
            }
        }
    }
}
