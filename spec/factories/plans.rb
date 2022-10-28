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

        # [*MasterPlan.]

      end
    end
  end
end
