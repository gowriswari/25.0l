view: panwanomalydetails {
  sql_table_name: `testing.panw-anomaly-details` ;;

  dimension_group: alert_log_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.alert_log_timestamp ;;
  }
  dimension: net_cost_yesterday {
    type: number
    sql: ${TABLE}.net_cost_yesterday ;;
  }
  dimension: percent_increase_since_two_days_ago {
    type: number
    sql: ${TABLE}.percent_increase_since_two_days_ago ;;
  }
  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }
  dimension: service_description {
    type: string
    sql: ${TABLE}.service_description ;;
  }
  dimension: sku_description {
    type: string
    sql: ${TABLE}.sku_description ;;
  }
  dimension: total_net_cost {
    type: number
    sql: ${TABLE}.total_net_cost ;;
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
