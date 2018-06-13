if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAIWZPE3WWKQFUPYFQ'],
      :aws_secret_access_key => ENV['sxToNB6MMyQIo9owzKFAo04jPoBKsXpj+izrPULm']
    }
    config.fog_directory     =  ENV['sample-app-marisato101']
  end
end
