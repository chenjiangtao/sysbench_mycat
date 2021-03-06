pathtest = string.match(test, "(.*/)")

if pathtest then
   dofile(pathtest .. "common.lua")
else
   require("common")
end

function thread_init()
   set_vars()
end

function event()
   local table_name
   local c_val
   local query
   table_name = "SBTEST".. sb_rand_uniform(1, oltp_tables_count)
   c_val = sb_rand_str("###########-###########-###########-###########-###########-###########-###########-###########-###########-###########")
   query = "UPDATE " .. table_name .. " SET c='" .. c_val .. "' WHERE id=" .. sb_rand(1, oltp_table_size)
   rs = db_query(query)
end
