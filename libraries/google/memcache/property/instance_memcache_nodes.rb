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
module GoogleInSpec
  module Memcache
    module Property
      class InstanceMemcacheNodes
        attr_reader :node_id, :zone, :port, :host, :state

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @node_id = args['nodeId']
          @zone = args['zone']
          @port = args['port']
          @host = args['host']
          @state = args['state']
        end

        def to_s
          "#{@parent_identifier} InstanceMemcacheNodes"
        end
      end

      class InstanceMemcacheNodesArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return InstanceMemcacheNodes.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| InstanceMemcacheNodes.new(v, parent_identifier) }
        end
      end
    end
  end
end
