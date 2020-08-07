class ApplicationController < ActionController::Base
  def data
    @data ||= HashWithIndifferentAccess.new(
      YAML.load_file(Rails.root.join('config/data.yml'))
    )
  end
end
