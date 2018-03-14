view: sf_crime_original {
  sql_table_name:  `bigquery-public-data.san_francisco.sfpd_incidents` ;;


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: unique_key {
    type: number
    sql: ${TABLE}.unique_key ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: descript {
    type: string
    sql: ${TABLE}.descript ;;
  }

  dimension: dayofweek {
    type: string
    sql: ${TABLE}.dayofweek ;;
  }

  dimension: pddistrict {
    type: string
    sql: ${TABLE}.pddistrict ;;
  }

  dimension: resolution {
    type: string
    sql: ${TABLE}.resolution ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: pdid {
    type: number
    sql: ${TABLE}.pdid ;;
  }

  dimension_group: timestamp {
    type: time
    sql: ${TABLE}.timestamp ;;
  }

  set: detail {
    fields: [
      unique_key,
      category,
      descript,
      dayofweek,
      pddistrict,
      resolution,
      address,
      longitude,
      latitude,
      location,
      pdid,
      timestamp_time
    ]
  }
}
