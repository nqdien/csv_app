class CsvFileController < ApplicationController
  def index
  end

  def download
    send_file Rails.root.join('private', 'download.csv'), :type=>"text/csv; charset=utf-8", :x_sendfile=>true
  end

  def upload
    File.open(Rails.root.join('public', 'uploads', "#{Date.today.strftime('%d%m%y')}_" + "test.csv"), 'w') do |file|
      file.write(request.body.read.force_encoding(Encoding::UTF_8))
    end
  end
end
