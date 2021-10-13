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
class ComputeVpnTunnels < GcpResourceBase
  name 'google_compute_vpn_tunnels'
  desc 'VpnTunnel plural resource'
  supports platform: 'gcp'

  attr_reader :table

  filter_table_config = FilterTable.create

  filter_table_config.add(:ids, field: :id)
  filter_table_config.add(:creation_timestamps, field: :creation_timestamp)
  filter_table_config.add(:vpn_tunnel_names, field: :vpn_tunnel_name)
  filter_table_config.add(:descriptions, field: :description)
  filter_table_config.add(:target_vpn_gateways, field: :target_vpn_gateway)
  filter_table_config.add(:vpn_gateways, field: :vpn_gateway)
  filter_table_config.add(:vpn_gateway_interfaces, field: :vpn_gateway_interface)
  filter_table_config.add(:peer_external_gateways, field: :peer_external_gateway)
  filter_table_config.add(:peer_external_gateway_interfaces, field: :peer_external_gateway_interface)
  filter_table_config.add(:peer_gcp_gateways, field: :peer_gcp_gateway)
  filter_table_config.add(:routers, field: :router)
  filter_table_config.add(:peer_ips, field: :peer_ip)
  filter_table_config.add(:shared_secrets, field: :shared_secret)
  filter_table_config.add(:shared_secret_hashes, field: :shared_secret_hash)
  filter_table_config.add(:ike_versions, field: :ike_version)
  filter_table_config.add(:local_traffic_selectors, field: :local_traffic_selector)
  filter_table_config.add(:remote_traffic_selectors, field: :remote_traffic_selector)
  filter_table_config.add(:labels, field: :labels)
  filter_table_config.add(:label_fingerprints, field: :label_fingerprint)
  filter_table_config.add(:regions, field: :region)

  filter_table_config.connect(self, :table)

  def initialize(params = {})
    super(params.merge({ use_http_transport: true }))
    @params = params
    @table = fetch_wrapped_resource('items')
  end

  def fetch_wrapped_resource(wrap_path)
    # fetch_resource returns an array of responses (to handle pagination)
    result = @connection.fetch_all(product_url, resource_base_url, @params, 'Get')
    return if result.nil?

    # Conversion of string -> object hash to symbol -> object hash that InSpec needs
    converted = []
    result.each do |response|
      next if response.nil? || !response.key?(wrap_path)
      response[wrap_path].each do |hash|
        hash_with_symbols = {}
        hash.each_key do |key|
          name, value = transform(key, hash)
          hash_with_symbols[name] = value
        end
        converted.push(hash_with_symbols)
      end
    end

    converted
  end

  def transform(key, value)
    return transformers[key].call(value) if transformers.key?(key)

    [key.to_sym, value]
  end

  def transformers
    {
      'id' => ->(obj) { return :id, obj['id'] },
      'creationTimestamp' => ->(obj) { return :creation_timestamp, parse_time_string(obj['creationTimestamp']) },
      'name' => ->(obj) { return :vpn_tunnel_name, obj['name'] },
      'description' => ->(obj) { return :description, obj['description'] },
      'targetVpnGateway' => ->(obj) { return :target_vpn_gateway, obj['targetVpnGateway'] },
      'vpnGateway' => ->(obj) { return :vpn_gateway, obj['vpnGateway'] },
      'vpnGatewayInterface' => ->(obj) { return :vpn_gateway_interface, obj['vpnGatewayInterface'] },
      'peerExternalGateway' => ->(obj) { return :peer_external_gateway, obj['peerExternalGateway'] },
      'peerExternalGatewayInterface' => ->(obj) { return :peer_external_gateway_interface, obj['peerExternalGatewayInterface'] },
      'peerGcpGateway' => ->(obj) { return :peer_gcp_gateway, obj['peerGcpGateway'] },
      'router' => ->(obj) { return :router, obj['router'] },
      'peerIp' => ->(obj) { return :peer_ip, obj['peerIp'] },
      'sharedSecret' => ->(obj) { return :shared_secret, obj['sharedSecret'] },
      'sharedSecretHash' => ->(obj) { return :shared_secret_hash, obj['sharedSecretHash'] },
      'ikeVersion' => ->(obj) { return :ike_version, obj['ikeVersion'] },
      'localTrafficSelector' => ->(obj) { return :local_traffic_selector, obj['localTrafficSelector'] },
      'remoteTrafficSelector' => ->(obj) { return :remote_traffic_selector, obj['remoteTrafficSelector'] },
      'labels' => ->(obj) { return :labels, obj['labels'] },
      'labelFingerprint' => ->(obj) { return :label_fingerprint, obj['labelFingerprint'] },
      'region' => ->(obj) { return :region, obj['region'] },
    }
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
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
    'projects/{{project}}/regions/{{region}}/vpnTunnels'
  end
end
