class VanLowe::Transcript < ActiveRecord::Base

  belongs_to :parent, :polymorphic => true

  serialize :request_headers, Hash
  serailize :response_headers, Hash

  def completed?
    response_code.present?
  end

  def success?
    completed? && response_code =~ /2\d\d/
  end

end
