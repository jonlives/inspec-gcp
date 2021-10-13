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

# A provider to manage Cloud IAM resources.
class IAMServiceAccountKey < GcpResourceBase
  name 'google_service_account_key'
  desc 'ServiceAccountKey'
  supports platform: 'gcp'

  attr_reader :params, :name, :private_key_type, :key_algorithm, :private_key_data, :public_key_data, :valid_after_time, :valid_before_time, :key_type, :service_account, :path

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @name = @fetched['name']
    @private_key_type = @fetched['privateKeyType']
    @key_algorithm = @fetched['keyAlgorithm']
    @private_key_data = @fetched['privateKeyData']
    @public_key_data = @fetched['publicKeyData']
    @valid_after_time = parse_time_string(@fetched['validAfterTime'])
    @valid_before_time = parse_time_string(@fetched['validBeforeTime'])
    @key_type = @fetched['keyType']
    @service_account = @fetched['serviceAccount']
    @path = @fetched['path']
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "ServiceAccountKey #{@params[:name]}"
  end

  private

  def product_url(_ = nil)
    'https://iam.googleapis.com/v1/'
  end

  def resource_base_url
    'projects/{{project}}/serviceAccounts/{{service_account}}/keys/{{name}}'
  end
end
