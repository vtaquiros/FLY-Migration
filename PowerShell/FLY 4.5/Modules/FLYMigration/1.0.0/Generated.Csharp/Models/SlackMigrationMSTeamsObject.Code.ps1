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

    public partial class SlackMigrationMSTeamsObject
    {
        /// <summary>
        /// Initializes a new instance of the SlackMigrationMSTeamsObject
        /// class.
        /// </summary>
        public SlackMigrationMSTeamsObject()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the SlackMigrationMSTeamsObject
        /// class.
        /// </summary>
        public SlackMigrationMSTeamsObject(string name, string mailbox, string channel)
        {
            Name = name;
            Mailbox = mailbox;
            Channel = channel;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "name")]
        public string Name { get; set; }

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "mailbox")]
        public string Mailbox { get; set; }

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "channel")]
        public string Channel { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public virtual void Validate()
        {
            if (Name == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "Name");
            }
            if (Mailbox == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "Mailbox");
            }
            if (Channel == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "Channel");
            }
        }
    }
}
