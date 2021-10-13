# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------
require 'gcp_backend'

# A provider to manage Resource Manager resources.
class ResourceManagerFolder < GcpResourceBase
  name 'google_resourcemanager_folder'
  desc 'Folder'
  supports platform: 'gcp'

  attr_reader :params, :name, :lifecycle_state, :create_time, :parent, :display_name

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @name = @fetched['name']
    @lifecycle_state = @fetched['lifecycleState']
    @create_time = parse_time_string(@fetched['createTime'])
    @parent = @fetched['parent']
    @display_name = @fetched['displayName']
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Folder #{@params[:name]}"
  end

  private

  def product_url(_ = nil)
    'https://cloudresourcemanager.googleapis.com/v2/'
  end

  def resource_base_url
    '{{name}}'
  end
end
