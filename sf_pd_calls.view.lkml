view: sf_pd_calls {
  sql_table_name: `bigquery-public-data.san_francisco.sffd_service_calls` ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: call_number {
    type: number
    sql: ${TABLE}.call_number ;;
  }

  dimension: unit_id {
    type: string
    sql: ${TABLE}.unit_id ;;
  }

  dimension: incident_number {
    type: number
    sql: ${TABLE}.incident_number ;;
  }

  dimension: call_type {
    type: string
    sql: ${TABLE}.call_type ;;
  }

  dimension: call_date {
    type: date
    sql: ${TABLE}.call_date ;;
  }

  dimension: watch_date {
    type: date
    sql: ${TABLE}.watch_date ;;
  }

  dimension_group: received_timestamp {
    type: time
    sql: ${TABLE}.received_timestamp ;;
  }

  dimension_group: entry_timestamp {
    type: time
    sql: ${TABLE}.entry_timestamp ;;
  }

  dimension_group: dispatch_timestamp {
    type: time
    sql: ${TABLE}.dispatch_timestamp ;;
  }

  dimension_group: response_timestamp {
    type: time
    sql: ${TABLE}.response_timestamp ;;
  }

  dimension_group: on_scene_timestamp {
    type: time
    sql: ${TABLE}.on_scene_timestamp ;;
  }

  dimension_group: transport_timestamp {
    type: time
    sql: ${TABLE}.transport_timestamp ;;
  }

  dimension_group: hospital_timestamp {
    type: time
    sql: ${TABLE}.hospital_timestamp ;;
  }

  dimension: call_final_disposition {
    type: string
    sql: ${TABLE}.call_final_disposition ;;
  }

  dimension_group: available_timestamp {
    type: time
    sql: ${TABLE}.available_timestamp ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: zipcode_of_incident {
    type: string
    sql: ${TABLE}.zipcode_of_incident ;;
  }

  dimension: battalion {
    type: string
    sql: ${TABLE}.battalion ;;
  }

  dimension: station_area {
    type: string
    sql: ${TABLE}.station_area ;;
  }

  dimension: box {
    type: string
    sql: ${TABLE}.box ;;
  }

  dimension: original_priority {
    type: string
    sql: ${TABLE}.original_priority ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension: final_priority {
    type: number
    sql: ${TABLE}.final_priority ;;
  }

  dimension: als_unit {
    type: string
    sql: ${TABLE}.als_unit ;;
  }

  dimension: call_type_group {
    type: string
    sql: ${TABLE}.call_type_group ;;
  }

  dimension: number_of_alarms {
    type: number
    sql: ${TABLE}.number_of_alarms ;;
  }

  dimension: unit_type {
    type: string
    sql: ${TABLE}.unit_type ;;
  }

  dimension: unit_sequence_in_call_dispatch {
    type: number
    sql: ${TABLE}.unit_sequence_in_call_dispatch ;;
  }

  dimension: fire_prevention_district {
    type: string
    sql: ${TABLE}.fire_prevention_district ;;
  }

  dimension: supervisor_district {
    type: string
    sql: ${TABLE}.supervisor_district ;;
  }

  dimension: neighborhood_district {
    type: string
    sql: ${TABLE}.neighborhood_district ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: row_id {
    type: string
    sql: ${TABLE}.row_id ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  set: detail {
    fields: [
      call_number,
      unit_id,
      incident_number,
      call_type,
      call_date,
      watch_date,
      received_timestamp_time,
      entry_timestamp_time,
      dispatch_timestamp_time,
      response_timestamp_time,
      on_scene_timestamp_time,
      transport_timestamp_time,
      hospital_timestamp_time,
      call_final_disposition,
      available_timestamp_time,
      address,
      city,
      zipcode_of_incident,
      battalion,
      station_area,
      box,
      original_priority,
      priority,
      final_priority,
      als_unit,
      call_type_group,
      number_of_alarms,
      unit_type,
      unit_sequence_in_call_dispatch,
      fire_prevention_district,
      supervisor_district,
      neighborhood_district,
      location,
      row_id,
      latitude,
      longitude
    ]
  }
}
