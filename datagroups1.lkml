datagroup: gowri_2_test {
  max_cache_age: "5 minutes"
  sql_trigger: SELECT EXTRACT(HOUR FROM CURRENT_TIMESTAMP());;
}
