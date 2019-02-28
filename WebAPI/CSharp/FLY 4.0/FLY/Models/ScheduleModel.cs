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

    public partial class ScheduleModel
    {
        /// <summary>
        /// Initializes a new instance of the ScheduleModel class.
        /// </summary>
        public ScheduleModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the ScheduleModel class.
        /// </summary>
        /// <param
        /// name="intervalType">{AvePoint.Migration.Api.Models.ScheduleInterval}.
        /// Possible values include: 'OnlyOnce', 'Hourly', 'Daily',
        /// 'Weekly'</param>
        /// <param name="startTime">The date and time when the schedule will be
        /// triggered.
        /// Should be w3 format, eg 2018-11-01T00:00:00Z</param>
        /// <param name="interval">The interval of the schedule, if interval
        /// type is not OnlyOnce, this field is required</param>
        /// <param
        /// name="endType">{AvePoint.Migration.Api.Models.ScheduleEndType}.
        /// Possible values include: 'Occurrences', 'Time'</param>
        /// <param name="occurrencesValue">Stop the recurrence after a
        /// specified number of occurrence,
        /// if schedule end type is Occurrences, this field is
        /// required.</param>
        /// <param name="endTime">The time to end the recurrence
        /// If schedule end type is Time, this field is required.
        /// Should be w3 format, eg 2018-11-01T00:00:00Z</param>
        public ScheduleModel(string intervalType, System.DateTime startTime, int? interval = default(int?), string endType = default(string), int? occurrencesValue = default(int?), System.DateTime? endTime = default(System.DateTime?))
        {
            IntervalType = intervalType;
            StartTime = startTime;
            Interval = interval;
            EndType = endType;
            OccurrencesValue = occurrencesValue;
            EndTime = endTime;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets {AvePoint.Migration.Api.Models.ScheduleInterval}.
        /// Possible values include: 'OnlyOnce', 'Hourly', 'Daily', 'Weekly'
        /// </summary>
        [JsonProperty(PropertyName = "intervalType")]
        public string IntervalType { get; set; }

        /// <summary>
        /// Gets or sets the date and time when the schedule will be triggered.
        /// Should be w3 format, eg 2018-11-01T00:00:00Z
        /// </summary>
        [JsonProperty(PropertyName = "startTime")]
        public System.DateTime StartTime { get; set; }

        /// <summary>
        /// Gets or sets the interval of the schedule, if interval type is not
        /// OnlyOnce, this field is required
        /// </summary>
        [JsonProperty(PropertyName = "interval")]
        public int? Interval { get; set; }

        /// <summary>
        /// Gets or sets {AvePoint.Migration.Api.Models.ScheduleEndType}.
        /// Possible values include: 'Occurrences', 'Time'
        /// </summary>
        [JsonProperty(PropertyName = "endType")]
        public string EndType { get; set; }

        /// <summary>
        /// Gets or sets stop the recurrence after a specified number of
        /// occurrence,
        /// if schedule end type is Occurrences, this field is required.
        /// </summary>
        [JsonProperty(PropertyName = "occurrencesValue")]
        public int? OccurrencesValue { get; set; }

        /// <summary>
        /// Gets or sets the time to end the recurrence
        /// If schedule end type is Time, this field is required.
        /// Should be w3 format, eg 2018-11-01T00:00:00Z
        /// </summary>
        [JsonProperty(PropertyName = "endTime")]
        public System.DateTime? EndTime { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public virtual void Validate()
        {
            if (IntervalType == null)
            {
                throw new ValidationException(ValidationRules.CannotBeNull, "IntervalType");
            }
            if (Interval > 999)
            {
                throw new ValidationException(ValidationRules.InclusiveMaximum, "Interval", 999);
            }
            if (Interval < 1)
            {
                throw new ValidationException(ValidationRules.InclusiveMinimum, "Interval", 1);
            }
            if (OccurrencesValue > 999)
            {
                throw new ValidationException(ValidationRules.InclusiveMaximum, "OccurrencesValue", 999);
            }
            if (OccurrencesValue < 1)
            {
                throw new ValidationException(ValidationRules.InclusiveMinimum, "OccurrencesValue", 1);
            }
        }
    }
}
