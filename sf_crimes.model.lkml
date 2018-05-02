connection: "lookerdata_publicdata_standard_sql"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

explore: sf_crime_original {
  join: sf_zipcode_map {
    sql_on: ${sf_crime_original.latitude} = ${sf_zipcode_map.latitude};;
    relationship: one_to_one
  }
}
