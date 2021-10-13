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
require 'google/compute/property/instancegroupmanager_current_actions'
require 'google/compute/property/instancegroupmanager_named_ports'

# A provider to manage Compute Engine resources.
class ComputeInstanceGroupManager < GcpResourceBase
  name 'google_compute_instance_group_manager'
  desc 'InstanceGroupManager'
  supports platform: 'gcp'

  attr_reader :params, :base_instance_name, :creation_timestamp, :current_actions, :description, :id, :instance_group, :instance_template, :name, :named_ports, :region, :target_pools, :target_size, :zone

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @base_instance_name = @fetched['baseInstanceName']
    @creation_timestamp = parse_time_string(@fetched['creationTimestamp'])
    @current_actions = GoogleInSpec::Compute::Property::InstanceGroupManagerCurrentActions.new(@fetched['currentActions'], to_s)
    @description = @fetched['description']
    @id = @fetched['id']
    @instance_group = @fetched['instanceGroup']
    @instance_template = @fetched['instanceTemplate']
    @name = @fetched['name']
    @named_ports = GoogleInSpec::Compute::Property::InstanceGroupManagerNamedPortsArray.parse(@fetched['namedPorts'], to_s)
    @region = @fetched['region']
    @target_pools = @fetched['targetPools']
    @target_size = @fetched['targetSize']
    @zone = @fetched['zone']
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "InstanceGroupManager #{@params[:name]}"
  end

  private

  def product_url(beta: false)
    if beta
      'https://compute.googleapis.com/compute/beta/'
    else
      'https://compute.googleapis.com/compute/v1/'
    end
  end

  def resource_base_url
    'projects/{{project}}/zones/{{zone}}/instanceGroupManagers/{{name}}'
  end
end
