view: month_cte {
  sql_table_name: `testing.month_cte` ;;

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }
  dimension: end_headcount {
    type: number
    sql: ${TABLE}.end_headcount ;;
  }
  dimension_group: month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.month ;;
  }
  dimension: start_headcount {
    type: number
    sql: ${TABLE}.start_headcount ;;
  }
  measure: count {
    type: count
  }
}
