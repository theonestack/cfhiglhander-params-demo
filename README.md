### Usage

```
$ gem install cfhighlander --prerelease  
$ cfhighlander cfcompile --validate outer
```

```sh
$ cfhighlander cfcompile --validate outer
TRACE: Trying to load outer@latest from /private/tmp/cftest/outer ...
TRACE: Trying to load outer@latest from /private/tmp/cftest ...
Processing higlander component outer
	Location:/private/tmp/cftest/outer.cfhighlander.rb
	Config:{"component_version"=>"latest", "component_name"=>"outer", "template_name"=>"outer", "template_version"=>"latest"}
INFO: Requested subcomponent  with template
TRACE: Trying to load nameproducer@latest from /private/tmp/cftest/nameproducer ...
TRACE: Trying to load nameproducer@latest from /private/tmp/cftest ...
INFO: Requested subcomponent  with template
TRACE: Trying to load s3@latest from /private/tmp/cftest/s3 ...
TRACE: Trying to load s3@latest from /private/tmp/cftest ...
Processing higlander component nameproducer
	Location:/private/tmp/cftest/nameproducer.cfhighlander.rb
	Config:{"nested_component"=>true, "component_version"=>"latest", "component_name"=>"nameproducer", "template_name"=>"nameproducer", "template_version"=>"latest"}
Config for nameproducer written to /private/tmp/cftest/out/config/nameproducer.config.yaml
cfndsl template for nameproducer written to /private/tmp/cftest/out/cfndsl/nameproducer.compiled.cfndsl.rb
Processing higlander component s3
	Location:/private/tmp/cftest/s3.cfhighlander.rb
	Config:{"nested_component"=>true, "component_version"=>"latest", "component_name"=>"s3", "template_name"=>"s3", "template_version"=>"latest"}
Config for s3 written to /private/tmp/cftest/out/config/s3.config.yaml
cfndsl template for s3 written to /private/tmp/cftest/out/cfndsl/s3.compiled.cfndsl.rb
INFO Resolving parameter outer -> s3.BucketName:  resolved as output of nameproducer
INFO Resolving parameter outer -> s3.BucketName2:  parameter value provided
INFO Resolving parameter outer -> s3.BucketName3:  parameter value provided
INFO Resolving parameter outer -> s3.BucketName4:  no autowiring candidates, propagate parameter to parent
Config for outer written to /private/tmp/cftest/out/config/outer.config.yaml
cfndsl template for outer written to /private/tmp/cftest/out/cfndsl/outer.compiled.cfndsl.rb
Rendering sub-component cfndsl: nameproducer
Config for nameproducer written to /private/tmp/cftest/out/config/nameproducer.config.yaml
cfndsl template for nameproducer written to /private/tmp/cftest/out/cfndsl/nameproducer.compiled.cfndsl.rb
Rendering sub-component cfndsl: s3
Config for s3 written to /private/tmp/cftest/out/config/s3.config.yaml
cfndsl template for s3 written to /private/tmp/cftest/out/cfndsl/s3.compiled.cfndsl.rb
CloudFormation YAML template for outer written to /private/tmp/cftest/out/yaml/outer.compiled.yaml
CloudFormation YAML template for nameproducer written to /private/tmp/cftest/out/yaml/nameproducer.compiled.yaml
CloudFormation YAML template for s3 written to /private/tmp/cftest/out/yaml/s3.compiled.yaml
Validate template /private/tmp/cftest/out/yaml/outer.compiled.yaml locally
SUCCESS
Validate template /private/tmp/cftest/out/yaml/nameproducer.compiled.yaml locally
SUCCESS
Validate template /private/tmp/cftest/out/yaml/s3.compiled.yaml locally
SUCCESS


```
