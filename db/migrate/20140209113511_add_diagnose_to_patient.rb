class AddDiagnoseToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :diagnose_pre, :string
  end
end
