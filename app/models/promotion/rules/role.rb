class Promotion::Rules::Role < PromotionRule
  belongs_to :role
  has_and_belongs_to_many :roles, 
                          :class_name => "::Role", 
                          :join_table => "promotion_rules_roles", 
                          :foreign_key => "promotion_rule_id"
                          
  def eligible?(order, options = {})
    roles.none? or (roles & order.user.roles).any?
  end
  
  def role_ids_string
    role_ids.join(',')
  end
  
  def role_ids_string=(ids)
    self.role_ids = ids.to_s.split(',').map(&:strip)
  end
end