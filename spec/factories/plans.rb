# frozen_string_literal: true

FactoryBot.define do
  factory :plan do
    free

    MasterPlan.plan_code.each_value do |plan_code|
      trait plan_code do
        master_plan = MasterPlan.find_by!(plan_code:)

        master_plan { master_plan }
        name { master_plan.description }
        caption { master_plan.description }

        [*MasterPlan.boolean_column_names, *MasterPlan.integer_column_names].each do |column_name|
          send(column_name) { master_plan.public_send(column_name) }
        end
      end
    end
  end
end

# == Schema Information
#
# Table name: plans
#
#  id                               :integer          not null, primary key
#  api_client                       :boolean          default(FALSE), not null
#  caption                          :string           default("needs description"), not null
#  max_paper_upload_count           :integer          default(5), not null
#  max_paper_upload_count_unlimited :boolean          default(FALSE), not null
#  name                             :string           not null
#  created_at                       :datetime         not null
#  updated_at                       :datetime         not null
#  master_plan_id                   :bigint           not null
#
