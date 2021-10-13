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

# A provider to manage Cloud Storage resources.
class StorageBucketObject < GcpResourceBase
  name 'google_storage_bucket_object'
  desc 'BucketObject'
  supports platform: 'gcp'

  attr_reader :params, :bucket, :object, :content_type, :crc32c, :etag, :generation, :id, :md5_hash, :media_link, :metageneration, :name, :size, :storage_class, :time_created, :time_deleted, :time_storage_class_updated, :time_updated

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url(params[:beta]), resource_base_url, params, 'Get')
    parse unless @fetched.nil?
  end

  def parse
    @bucket = @fetched['bucket']
    @object = @fetched['object']
    @content_type = @fetched['contentType']
    @crc32c = @fetched['crc32c']
    @etag = @fetched['etag']
    @generation = @fetched['generation']
    @id = @fetched['id']
    @md5_hash = @fetched['md5Hash']
    @media_link = @fetched['mediaLink']
    @metageneration = @fetched['metageneration']
    @name = @fetched['name']
    @size = @fetched['size']
    @storage_class = @fetched['storageClass']
    @time_created = parse_time_string(@fetched['timeCreated'])
    @time_deleted = parse_time_string(@fetched['timeDeleted'])
    @time_storage_class_updated = parse_time_string(@fetched['timeStorageClassUpdated'])
    @time_updated = parse_time_string(@fetched['updated'])
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "BucketObject #{@params[:object]}"
  end

  # rubocop:disable Lint/DuplicateMethods
  def size
    @size&.to_i
  end
  # rubocop:enable Lint/DuplicateMethods

  private

  def product_url(_ = nil)
    'https://storage.googleapis.com/storage/v1/'
  end

  def resource_base_url
    'b/{{bucket}}/o/{{object}}'
  end
end
