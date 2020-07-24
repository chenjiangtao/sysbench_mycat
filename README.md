# sysbench
sysbench config 配置

# 修改适用mycat的两个内容 
- 1.去除"create index ....."

sysbench无法在mycat上创建index, 使用mycat全局id

```lua
   con:query(string.format("CREATE INDEX k_%d ON SBTEST%d(k)",
                                table_num, table_num))
``` 


- 2.表名全部改成大写 (mycat的表名都是大写的，所以要全部改成大写)
> sbtest --> SBTEST
