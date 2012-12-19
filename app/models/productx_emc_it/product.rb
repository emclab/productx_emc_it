module ProductxEmcIt
  class Product < ActiveRecord::Base
    belongs_to :rfq, :class_name => 'RfqxEmc::Rfq'
    
    attr_accessible :name, :model, :drawing_num, :frequency, :internal_frequency, :work_current, :work_voltage, :tech_spec
    validates :name, :presence => true
    validates :model, :presence => true
  end
end
