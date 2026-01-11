# shellcheck shell=bash
# Plugin: sam-cli

# Aliases
alias sb="sam build"
alias si="sam init"
alias sd="sam deploy"
alias sl="sam list"
alias ss="sam sync"
alias sp="sam package"
alias sdg="sam deploy --guided"

######################################################################
#<
#
# Function: sam_local_invoke()
#
#>
######################################################################
sam_local_invoke() {
    local event_file="$1"
    local function_name="$2"

    sam local invoke --event "$event_file" "$function_name"
}

######################################################################
#<
#
# Function: sam_local_invoke_with_env(env_vars_file, function_name)
#
#  Args:
#	env_vars_file -
#	function_name -
#
#>
######################################################################
sam_local_invoke_with_env() {
    local env_vars_file="$1"
    local function_name="$2"

    sam local invoke --env-vars "$env_vars_file" "$function_name"
}

######################################################################
#<
#
# Function: sam_local_invoke_by_logical_id(logical_id)
#
#  Args:
#	logical_id -
#
#>
######################################################################
sam_local_invoke_by_logical_id() {
    local logical_id="$1"

    sam local invoke "$logical_id"
}

######################################################################
#<
#
# Function: sam_local_invoke_with_hook(hook_name)
#
#  Args:
#	hook_name -
#
#>
######################################################################
sam_local_invoke_with_hook() {
    local hook_name="$1"

    sam local invoke --hook-name "$hook_name" --beta-features
}

######################################################################
#<
#
# Function: sam_local_start_api(warm_containers)
#
#  Args:
#	warm_containers -
#
#>
######################################################################
sam_local_start_api() {
    local warm_containers="$1"

    sam local start-api --warm-containers "$warm_containers"
}

######################################################################
#<
#
# Function: sam_local_start_api_with_invoke_image(invoke_image)
#
#  Args:
#	invoke_image -
#
#>
######################################################################
sam_local_start_api_with_invoke_image() {
    local invoke_image="$1"

    sam local start-api --invoke-image "$invoke_image"
}

######################################################################
#<
#
# Function: sam_local_start_api_with_invoke_image_function(function_image)
#
#  Args:
#	function_image -
#
#>
######################################################################
sam_local_start_api_with_invoke_image_function() {
    local function_image="$1"

    sam local start-api --invoke-image "$function_image"
}

######################################################################
#<
#
# Function: sam_local_start_api_with_template(template_file)
#
#  Args:
#	template_file -
#
#>
######################################################################
sam_local_start_api_with_template() {
    local template_file="$1"

    sam local start-api --template "$template_file"
}

######################################################################
#<
#
# Function: sam_local_start_lambda_with_template(template_file)
#
#  Args:
#	template_file -
#
#>
######################################################################
sam_local_start_lambda_with_template() {
    local template_file="$1"

    sam local start-lambda --template "$template_file"
}

######################################################################
#<
#
# Function: sam_init_no_interactive()
#
#>
######################################################################
sam_init_no_interactive() {
    sam init --no-interactive --runtime go1.x --name go-demo --dependency-manager mod --apptemplate hello-world
}

######################################################################
#<
#
# Function: sam_init_from_location(location)
#
#  Args:
#	location -
#
#>
######################################################################
sam_init_from_location() {
    local location="$1"

    sam init --location "$location"
}

######################################################################
#<
#
# Function: sam_deploy_guided()
#
#>
######################################################################
sam_deploy_guided() {
    sam deploy --guided
}

######################################################################
#<
#
# Function: sam_deploy_guided_with_template(template_file)
#
#  Args:
#	template_file -
#
#>
######################################################################
sam_deploy_guided_with_template() {
    local template_file="$1"

    sam deploy --guided --template "$template_file"
}

######################################################################
#<
#
# Function: sam_list_endpoints_json()
#
#>
######################################################################
sam_list_endpoints_json() {
    sam list endpoints --output json
}

######################################################################
#<
#
# Function: sam_list_endpoints_by_stack(stack_name)
#
#  Args:
#	stack_name -
#
#>
######################################################################
sam_list_endpoints_by_stack() {
    local stack_name="$1"

    sam list endpoints --stack-name "$stack_name" --output json
}

######################################################################
#<
#
# Function: sam_sync_watch()
#
#>
######################################################################
sam_sync_watch() {
    sam sync --watch
}

######################################################################
#<
#
# Function: sam_sync_code_watch()
#
#>
######################################################################
sam_sync_code_watch() {
    sam sync --code --watch
}

######################################################################
#<
#
# Function: sam_sync_code_by_resource_id(resource_id)
#
#  Args:
#	resource_id -
#
#>
######################################################################
sam_sync_code_by_resource_id() {
    local resource_id="$1"

    sam sync --code --resource-id "$resource_id"
}

######################################################################
#<
#
# Function: sam_sync_code_by_stack_and_resource_id(stack_name, resource_id)
#
#  Args:
#	stack_name -
#	resource_id -
#
#>
######################################################################
sam_sync_code_by_stack_and_resource_id() {
    local stack_name="$1"
    local resource_id="$2"

    sam sync --code --stack-name "$stack_name" --resource-id "$resource_id"
}

######################################################################
#<
#
# Function: sam_sync_no_watch()
#
#>
######################################################################
sam_sync_no_watch() {
    sam sync --no-watch
}

######################################################################
#<
#
# Function: sam_build_with_config_env(config_env)
#
#  Args:
#	config_env -
#
#>
######################################################################
sam_build_with_config_env() {
    local config_env="$1"

    sam build --config-env "$config_env"
}

######################################################################
#<
#
# Function: sam_build_with_container(build_image)
#
#  Args:
#	build_image -
#
#>
######################################################################
sam_build_with_container() {
    local build_image="$1"

    sam build --use-container --build-image "$build_image"
}

######################################################################
#<
#
# Function: sam_build_with_container_env_vars(github_token, global_env_var)
#
#  Args:
#	github_token -
#	global_env_var -
#
#  Environment:	 GITHUB_TOKEN
#>
######################################################################
sam_build_with_container_env_vars() {
    local github_token="$1"
    local global_env_var="$2"

    sam build --use-container --container-env-var "Function1.GITHUB_TOKEN=$github_token" --container-env-var "GLOBAL_ENV_VAR=$global_env_var"
}

######################################################################
#<
#
# Function: sam_build_with_container_env_var_file(env_file)
#
#  Args:
#	env_file -
#
#>
######################################################################
sam_build_with_container_env_var_file() {
    local env_file="$1"

    sam build --use-container --container-env-var-file "$env_file"
}

######################################################################
#<
#
# Function: sam_build_parallel()
#
#  Environment:	 ZSH_CACHE_DIR
#>
######################################################################
sam_build_parallel() {
    sam build --parallel
}
