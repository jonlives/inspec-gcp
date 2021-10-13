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
require 'google/compute/property/backendservice_outlier_detection_base_ejection_time'
require 'google/compute/property/backendservice_outlier_detection_interval'
module GoogleInSpec
  module Compute
    module Property
      class BackendServiceOutlierDetection
        attr_reader :base_ejection_time, :consecutive_errors, :consecutive_gateway_failure, :enforcing_consecutive_errors, :enforcing_consecutive_gateway_failure, :enforcing_success_rate, :interval, :max_ejection_percent, :success_rate_minimum_hosts, :success_rate_request_volume, :success_rate_stdev_factor

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @base_ejection_time = GoogleInSpec::Compute::Property::BackendServiceOutlierDetectionBaseEjectionTime.new(args['baseEjectionTime'], to_s)
          @consecutive_errors = args['consecutiveErrors']
          @consecutive_gateway_failure = args['consecutiveGatewayFailure']
          @enforcing_consecutive_errors = args['enforcingConsecutiveErrors']
          @enforcing_consecutive_gateway_failure = args['enforcingConsecutiveGatewayFailure']
          @enforcing_success_rate = args['enforcingSuccessRate']
          @interval = GoogleInSpec::Compute::Property::BackendServiceOutlierDetectionInterval.new(args['interval'], to_s)
          @max_ejection_percent = args['maxEjectionPercent']
          @success_rate_minimum_hosts = args['successRateMinimumHosts']
          @success_rate_request_volume = args['successRateRequestVolume']
          @success_rate_stdev_factor = args['successRateStdevFactor']
        end

        def to_s
          "#{@parent_identifier} BackendServiceOutlierDetection"
        end
      end
    end
  end
end
