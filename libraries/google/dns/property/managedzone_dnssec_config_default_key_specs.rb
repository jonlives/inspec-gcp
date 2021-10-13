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
  module DNS
    module Property
      class ManagedZoneDnssecConfigDefaultKeySpecs
        attr_reader :algorithm, :key_length, :key_type, :kind

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @algorithm = args['algorithm']
          @key_length = args['keyLength']
          @key_type = args['keyType']
          @kind = args['kind']
        end

        def to_s
          "#{@parent_identifier} ManagedZoneDnssecConfigDefaultKeySpecs"
        end
      end

      class ManagedZoneDnssecConfigDefaultKeySpecsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return ManagedZoneDnssecConfigDefaultKeySpecs.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| ManagedZoneDnssecConfigDefaultKeySpecs.new(v, parent_identifier) }
        end
      end
    end
  end
end
