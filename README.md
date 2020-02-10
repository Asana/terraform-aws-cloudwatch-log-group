# `terraform-aws-cloudwatch-log-group`

This module is for creating a CloudWatch log group.


## Usage

An example deployable log group can be found in the [examples/simple](examples/simple) directory.

## Notes

The main item to consider when using this module is how long you need to retain logs for, we default to 30 days, but if you're using this module to send logs somewhere else (i.e. Elasticsearch) you should consider a much shorter retention period.

## How are the docs generated?

Manually, something like this:

```
terraform-docs md document . >> README.md
# and edit out the old stuff
```

## Variables

### Required Variables

The following variables are required:

#### environment

Description: The environment that this log group will be in.

Type:
`string`

#### name

Description: The name of the log group.

Type:
`string`

#### service

Description: The service that this log group is associated with

Type:
`string`

### Optional Variables

The following variables are optional (have default values):

#### custom\_tags

Description: A mapping of custom tags to add to the generated resources.

Type:
`map(string)`

Default:
`{}`

#### retention\_period

Description: How long the log group should retain logs (in days).

Type:
`string`

Default:
`"30"`

## Outputs

The following outputs are exported:

#### log\_group\_arn

Description: The ARN of the log group that we created.

#### log\_group\_name

Description: The name of the log group we created

