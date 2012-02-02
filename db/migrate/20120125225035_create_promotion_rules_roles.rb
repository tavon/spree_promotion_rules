class CreatePromotionRulesRoles < ActiveRecord::Migration
  def self.up
    create_table :promotion_rules_roles do |t|
      t.integer :role_id, :promotion_rule_id
    end
    remove_column :promotion_rules_roles, :id
    add_index :promotion_rules_roles, :role_id
    add_index :promotion_rules_roles, :promotion_rule_id
  end

  def self.down
    drop_table :promotion_rules_roles
  end
end