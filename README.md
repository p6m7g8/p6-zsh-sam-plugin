# P6's POSIX.2 p6-zsh-sam-plugin

## Table of Contents

### p6-zsh-sam-plugin

- [P6's POSIX.2 p6-zsh-sam-plugin](#p6s-posix2-p6-zsh-sam-plugin)
  - [Table of Contents](#table-of-contents)
    - [p6-zsh-sam-plugin](#p6-zsh-sam-plugin)
    - [Badges](#badges)
  - [Summary](#summary)
  - [Contributing](#contributing)
  - [Code of Conduct](#code-of-conduct)
  - [Changes](#changes)
  - [Usage](#usage)
    - [Aliases](#aliases)
    - [Convenience Functions](#convenience-functions)
  - [Author](#author)

### Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)
[![Mergify](https://img.shields.io/endpoint.svg?url=https://gh.mergify.io/badges/p6m7g8/p6-zsh-sam-plugin/&style=flat)](https://mergify.io)

## Summary

## Contributing

- [How to Contribute](CONTRIBUTING.md)

## Code of Conduct

- [Code of Conduct](https://github.com/p6m7g8/.github/blob/master/CODE_OF_CONDUCT.md)

## Changes

- [Change Log](CHANGELOG.md)

## Usage

### Aliases

- alias sb="sam build"
- alias si="sam init"
- alias sd="sam deploy"
- alias sl="sam list"
- alias ss="sam sync"
- alias sp="sam package"
- alias sdg="sam deploy --guided"

### Convenience Functions

- sam_build_parallel()
- sam_build_with_config_env(config_env)
- sam_build_with_container(build_image)
- sam_build_with_container_env_var_file(env_file)
- sam_build_with_container_env_vars(github_token, global_env_var)
- sam_deploy_guided()
- sam_deploy_guided_with_template(template_file)
- sam_init_from_location(location)
- sam_init_no_interactive()
- sam_list_endpoints_by_stack(stack_name)
- sam_list_endpoints_json()
- sam_local_invoke()
- sam_local_invoke_by_logical_id(logical_id)
- sam_local_invoke_with_env(env_vars_file, function_name)
- sam_local_invoke_with_hook(hook_name)
- sam_local_start_api(warm_containers)
- sam_local_start_api_with_invoke_image(invoke_image)
- sam_local_start_api_with_invoke_image_function(function_image)
- sam_local_start_api_with_template(template_file)
- sam_local_start_lambda_with_template(template_file)
- sam_sync_code_by_resource_id(resource_id)
- sam_sync_code_by_stack_and_resource_id(stack_name, resource_id)
- sam_sync_code_watch()
- sam_sync_no_watch()
- sam_sync_watch()

## Author

Philip M . Gollucci <pgollucci@p6m7g8.com>
