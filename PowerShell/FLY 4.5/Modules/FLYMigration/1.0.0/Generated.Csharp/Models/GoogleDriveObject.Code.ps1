// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.PowerShell.FLYMigration.Models
{
    using Newtonsoft.Json;
    using System.Linq;

    public partial class GoogleDriveObject
    {
        /// <summary>
        /// Initializes a new instance of the GoogleDriveObject class.
        /// </summary>
        public GoogleDriveObject()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the GoogleDriveObject class.
        /// </summary>
        /// <param name="level">Possible values include: 'Folder'</param>
        public GoogleDriveObject(string path = default(string), string level = default(string))
        {
            Path = path;
            Level = level;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "path")]
        public string Path { get; set; }

        /// <summary>
        /// Gets or sets possible values include: 'Folder'
        /// </summary>
        [JsonProperty(PropertyName = "level")]
        public string Level { get; set; }

    }
}
