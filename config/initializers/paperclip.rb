if Rails.env.production?
  # Rails.application.configure do
  #   config.paperclip_defaults = {
  #     storage: :s3,
  #     s3_protocol: 'http',
  #     s3_credentials: {
  #       bucket: ENV.fetch('S3_BUCKET_NAME'),
  #       access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
  #       secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
  #       s3_region: ENV.fetch('AWS_REGION'),
  #     }
  #   }
  # end
  Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
  Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
  #Paperclip::Attachment.default_options[:s3_host_name] = 's3-us-west-2.amazonaws.com'
end
