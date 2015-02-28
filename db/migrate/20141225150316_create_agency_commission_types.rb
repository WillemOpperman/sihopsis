class CreateAgencyCommissionTypes < ActiveRecord::Migration
  def change
    create_table :agency_commission_types do |t|
      t.uuid :uid
      t.string :code
      t.string :name
      t.references :media_category, index: true
      t.boolean :is_calculated_as_nett_marked_up_by_agency_comm_perc
      t.boolean :is_calculated_as_gross_marked_up_by_agency_comm_perc
      t.boolean :is_default
      t.datetime :eis_sync_date

      t.timestamps
    end
  end
end
