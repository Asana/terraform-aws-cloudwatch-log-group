# `terraform-cloudwatch-log-group`

This module is for creating a CloudWatch log group.


## Usage

An example deployable log group can be found in the [examples/simple](examples/simple) directory.

## Notes

The main item to consider when using this module is how long you need to retain logs for, we default to 30 days, but if you're using this module to send logs somewhere else (i.e. Elasticsearch) you should consider a much shorter retention period.

## Variables

<table>
<tr><th>Name</th><th>Description</th><th>Type</th><th>Default</th> <th>Required</th></tr>
<tr>
<td>name</td>
<td>The name of the CloudWatch log group - this will need to be unique.</td>
<td>

`string`</td>
<td>

`-`</td>
<td>yes</td>
</tr>
<tr>
<td>enviroment</td>
<td>The environment that this log group will live in.</td>
<td>

`string`</td>
<td>

`-`</td>
<td>yes</td>
</tr>
<tr>
<td>retention_period</td>
<td>The number of days that logs should be retained for.</td>
<td>

`string`</td>
<td>

`"30"`</td>
<td>no</td>
</tr>
<td>custom_tags</td>
<td>A mapping of custom tags to add to the generated resources.</td>
<td>

`map(string)`</td>
<td>

`{}`</td>
<td>no</td>
</tr>
</table>
              
## Outputs
              
| Name | Description |
|------|-------------|
| log\_group\_arn | The ARN of the log group |
              