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
  module Dataproc
    module Property
      class ClusterConfigMasterConfigManagedGroupConfig
        attr_reader :instance_template_name, :instance_group_manager_name

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @instance_template_name = args['instanceTemplateName']
          @instance_group_manager_name = args['instanceGroupManagerName']
        end

        def to_s
          "#{@parent_identifier} ClusterConfigMasterConfigManagedGroupConfig"
        end
      end
    end
  end
end
