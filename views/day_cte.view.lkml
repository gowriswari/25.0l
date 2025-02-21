view: day_cte {
  sql_table_name: `testing.day_cte` ;;

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }
  dimension: end_headcount {
    type: number
    sql: ${TABLE}.end_headcount ;;
  }
  dimension: start_headcount {
    type: number
    sql: ${TABLE}.start_headcount ;;
  }
  measure: count {
    type: count
  }
}
