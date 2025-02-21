datagroup: gowri_2_test {
  max_cache_age: "5 minutes"
  sql_trigger: SELECT MAX(id) FROM etl_log;;
}

#persist_with: gowri_2_test
