class Search < ActiveRecord::Base
  attr_accessible :ckind, :cmodel, :find, :price, :show
  
  def ocars
    @ocars ||= find_ocars
  end
  
  def find_ocars
    Ocar.find(:all, :condition => conditions)
  end
  
  def ckind_conditions
    ["Ocar.oem LIKE ?", "%#{oems}%", "%#{oems}%"] unless oems.blank?
  end
  
  def conditions
    [conditions_clauses.join(' AND '), *conditions_options]
  end
  
  def conditions_clauses
    conditions_parts.map {|condition| condition.first}
  end
  
  def conditions_options
    conditions_parts.map {|condition| condition[1..-1] }.flatten
  end
  
  
  def conditions_parts
    methods.grep(/_conditions$/).map {|m| send(m)}.compact
  end
end
