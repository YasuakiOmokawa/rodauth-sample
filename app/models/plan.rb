# frozen_string_literal: true

class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :master_plan

  private

  def set_defaults
    self.master_plan = MasterPlan.default
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
