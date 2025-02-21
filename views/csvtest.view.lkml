view: csvtest {
  sql_table_name: `testing.csv-test` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }
  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }
  dimension: robot_name {
    type: string
    sql: ${TABLE}.robot_name ;;
  }
  dimension_group: time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.time ;;
  }
  measure: count {
    type: count
    drill_fields: [id, robot_name]
  }
}
