class V1::UploadsController < ApplicationController
    def create
        file = params[:file]
        s3 = Aws::S3::Resource.new()
        filename = SecureRandom.uuid
        obj = s3.bucket("paintroad").object(filename)
        obj.put(body: file.tempfile)
        render json: { url: obj.public_url }
    end
  end
  