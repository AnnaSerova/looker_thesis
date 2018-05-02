view: sf_zipcode_map {
  sql_table_name: `lookerdata.anna_zipcode.zipcode`;;

  dimension: latitude {
    sql: ${TABLE}.latitude;;
  }

  dimension: zipcode {
    sql: ${TABLE}.latitude;;
  }

  dimension: longitude {
    sql: ${TABLE}.longitude;;
  }
 }
