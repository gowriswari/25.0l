view: cost_anomaly_alerting {
  sql_table_name: `testing.cost_anomaly_alerting` ;;

  dimension: anomaly_project_id {
    type: string
    sql: ${TABLE}.anomaly_project_id ;;
  }
  dimension: anomaly_project_name {
    type: string
    sql: ${TABLE}.anomaly_project_name ;;
  }
  dimension_group: anomaly_usage_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.anomaly_usage_start_date ;;
  }
  dimension: email_alert_success {
    type: yesno
    sql: ${TABLE}.email_alert_success ;;
  }
  dimension: email_recipient_list {
    type: string
    sql: ${TABLE}.email_recipient_list ;;
  }
  dimension_group: sent_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.sent_timestamp ;;
  }
  dimension: webex_alert_success {
    type: string
    sql: ${TABLE}.webex_alert_success ;;
  }
  dimension: webex_alert_success_fixed {
    type: yesno
    sql: ${TABLE}.webex_alert_success_fixed ;;
  }
  measure: count {
    type: count
    drill_fields: [anomaly_project_name]
  }
}
