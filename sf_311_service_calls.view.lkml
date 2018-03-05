view: sql_runner_query {
  sql_table_name:` lookerdata.sf_311_requests.311_service_requests` ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: unique_key {
    type: number
    sql: ${TABLE}.unique_key ;;
  }

  dimension_group: created_date {
    type: time
    sql: ${TABLE}.created_date ;;
  }

  dimension_group: closed_date {
    type: time
    sql: ${TABLE}.closed_date ;;
  }

  dimension_group: resolution_action_updated_date {
    type: time
    sql: ${TABLE}.resolution_action_updated_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_notes {
    type: string
    sql: ${TABLE}.status_notes ;;
  }

  dimension: agency_name {
    type: string
    sql: ${TABLE}.agency_name ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: complaint_type {
    type: string
    sql: ${TABLE}.complaint_type ;;
  }

  dimension: descriptor {
    type: string
    sql: ${TABLE}.descriptor ;;
  }

  dimension: incident_address {
    type: string
    sql: ${TABLE}.incident_address ;;
  }

  dimension: supervisor_district {
    type: number
    sql: ${TABLE}.supervisor_district ;;
  }

  dimension: neighborhood {
    type: string
    sql: ${TABLE}.neighborhood ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: media_url {
    type: string
    sql: ${TABLE}.media_url ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: police_district {
    type: string
    sql: ${TABLE}.police_district ;;
  }

  set: detail {
    fields: [
      unique_key,
      created_date_time,
      closed_date_time,
      resolution_action_updated_date_time,
      status,
      status_notes,
      agency_name,
      category,
      complaint_type,
      descriptor,
      incident_address,
      supervisor_district,
      neighborhood,
      location,
      source,
      media_url,
      latitude,
      longitude,
      police_district
    ]
  }
}
