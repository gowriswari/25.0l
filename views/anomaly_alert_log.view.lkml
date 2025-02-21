view: anomaly_alert_log {
  sql_table_name: `testing.anomaly_alert_log` ;;

  dimension_group: alert_log_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.alert_log_timestamp ;;
  }
  dimension: email_alert_sent {
    type: yesno
    sql: ${TABLE}.email_alert_sent ;;
  }
  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }
  dimension: slack_alert_sent {
    type: yesno
    sql: ${TABLE}.slack_alert_sent ;;
  }
  dimension_group: usage_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.usage_start_date ;;
  }
  measure: count {
    type: count
  }
}
