view: year_cte {
  sql_table_name: `testing.year_cte` ;;

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
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
  }
}
