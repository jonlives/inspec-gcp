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
require 'google/compute/property/backendservice_consistent_hash_http_cookie'
require 'google/compute/property/backendservice_consistent_hash_http_cookie_ttl'
module GoogleInSpec
  module Compute
    module Property
      class BackendServiceConsistentHash
        attr_reader :http_cookie, :http_header_name, :minimum_ring_size

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @http_cookie = GoogleInSpec::Compute::Property::BackendServiceConsistentHashHttpCookie.new(args['httpCookie'], to_s)
          @http_header_name = args['httpHeaderName']
          @minimum_ring_size = args['minimumRingSize']
        end

        def to_s
          "#{@parent_identifier} BackendServiceConsistentHash"
        end
      end
    end
  end
end
