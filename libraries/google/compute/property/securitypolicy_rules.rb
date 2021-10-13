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
require 'google/compute/property/securitypolicy_rules_match'
require 'google/compute/property/securitypolicy_rules_match_config'
require 'google/compute/property/securitypolicy_rules_match_expr'
module GoogleInSpec
  module Compute
    module Property
      class SecurityPolicyRules
        attr_reader :description, :priority, :action, :preview, :match

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @description = args['description']
          @priority = args['priority']
          @action = args['action']
          @preview = args['preview']
          @match = GoogleInSpec::Compute::Property::SecurityPolicyRulesMatch.new(args['match'], to_s)
        end

        def to_s
          "#{@parent_identifier} SecurityPolicyRules"
        end
      end

      class SecurityPolicyRulesArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return SecurityPolicyRules.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| SecurityPolicyRules.new(v, parent_identifier) }
        end
      end
    end
  end
end
