#show heading: set text(font: "Noto Sans")

#show link: underline

// Uncomment the following lines to adjust the size of text
// The recommend resume text size is from `10pt` to `12pt`
#set text(size: 12pt)

// Feel free to change the margin below to best fit your own CV
#set page(margin: (x: 0.9cm, y: 1.3cm))

// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

#set par(justify: true)

#let chiline() = {
  v(-3pt)
  line(length: 100%)
  v(-5pt)
}

#figure(image("./avatar.png", width: 5%))

= 张豪

18111257824 | zhanghao997\@qq.com |
#link("https://github.com/howz97")[github.com/howz97] | #link("https://www.yuque.com/ha0zhang")[yuque]

== 技能
#chiline()
C++, Rust, Golang, 算法, Raft, 数据库, LSM-Tree

== 教育背景
#chiline()

#link("https://net.ncepu.edu.cn/")[*华北电力大学*] #h(1fr) 2016/09 -- 2020/06 \
本科 软件工程 \

== 工作经历
#chiline()

#link("https://www.eloqdata.com/")[*EloqData*] (晨章数据) #h(1fr) 2022/11 -- 现在 \
研发工程师 #h(1fr) 北京 \
- [C++]独立实现底层KV存储引擎 *EloqStore*。 EloqStore 采用 COW B+Tree 数据结构以实现稳定低延迟的读与高效的批量写。 COW使得读操作无须加锁。组合boost coroutine与io_uring以实现高效并发，并充分利用 NVMe SSD。实现了coroutine执行调度与并发控制。支持磁盘顺序写与随机写两种模式，生成snapshot。支持cloud模式, 同步存储到s3, 本地SSD作为缓存。读性能超过RocksDB，最高写入吞吐能达到NVMe SSD的上限。
- [C++]独立开发 #link("https://www.eloqdata.com/docs/monosql-mysql-diff")[*MonoSQL*]. MonoSQL 是 MariaDB 与 DynamoDB 的无状态中间层，将 DynamoDB 封装为 MariaDB 的存储引擎。 实现了Repeatable-read与Read-committed两种隔离级别的transaction，二级索引，毫秒级别完成alter table。
- [C++]独立开发CDC工具，用于从 EloqSQL 到其他分析系统(OLAP/Kafka)或备份数据库的增量实时复制。从Log-Server读取并解码WAL得到key-value修改，然后把key-value解码并转换为SQL语句，最后在下游系统执行此SQL。实现了从mariadb frm解析取得table结构，KV与SQL之间相互转换。
- [C++]独立开发EloqSQL数据导入工具，跳过SQL层逻辑，直接向KV层(cassandra)写入。类似TiDB Lightning。
- [Rust]开发EloqSQL与EloqKV的数据库集群管理工具 #link("https://www.eloqdata.com/downloadeloqctl")[*eloqctl*]，实现在非云环境高效部署与控制集群。管理的组件包括EloqSQL,EloqKV,codis,LogServer,Cassandra,Prometheus,Grafana,mysql-exporter,node-exporter,cassandra-collector。
- [Go]#link("https://github.com/monographdb/tidb")[github.com/monographdb/tidb] 二次开发 TiDB-DM 以支持通过SQL语句向EloqSQL导入数据
- [Go]#link("https://github.com/monographdb/codis")[github.com/monographdb/codis] 二次开发 *Codis* 以兼容 EloqKV
- [Go]#link("https://github.com/monographdb/juicefs")[github.com/monographdb/juicefs] 二次开发 *JuiceFS* 以支持 EloqKV 作为元数据存储引擎，优化了redis的 hot-key big-key以发挥分布式多线程redis的优势
- [Shell]基于Concourse实现EloqSQL与EloqKV各种模态组合的自动化编译与发布流程。

#link("https://www.tap4fun.com/")[*Tap4fun*] (创人所爱) #h(1fr) 2020/03 -- 2021/12 \
服务器开发工程师 #h(1fr) 成都 \
- 参与游戏《Age of Apes》(猿族时代)的服务器端开发，在产品上线以前参与多项功能的实现。项目组被寄予厚望，团队达到百人规模。
- 参与游戏《Invasion》(战地风暴，当时是公司收入支柱)的服务器端维护和开发。负责实现了"突变体"玩法，攻克了地图刷怪难题。

== 自学网课
#chiline()

*TinyKV* #link("https://github.com/howz97/tinykv")[github.com/howz97/tinykv] \
模仿TiKV架构的简易分布式KV存储引擎， 数据分片后写入多个raft group。 支持在线集群扩展，分片迁移。 事物基于 percolator 具有snapshot isolation隔离级别。 实现了完整的Raft算法：prevote, snapshot, member config change。

*MIT6.824* #link("https://github.com/howz97/mit6.824")[github.com/howz97/mit6.824] (private repo) \
实验是实现分布式可扩展KV存储，实现了Raft算法。

*CMU15-445* #link("https://github.com/howz97/bustub")[github.com/howz97/bustub] \
实验是为关系型数据库实现功能

*CMU15-721* #link("https://github.com/howz97/postgres/tree/2023-S721-P1")[github.com/howz97/postgres/tree/2023-S721-P1] \
实验是为PostgreSQL实现foreign data wrapper以支持 columnar storage

*ToyOS* #link("https://github.com/howz97/toyos")[github.com/howz97/toyos] \
跟随 #link("https://os.phil-opp.com/")["Writing an OS in Rust"] 系列博客教学用Rust实现一个玩具操作系统

== 个人项目
#chiline()

*Golang算法库* #link("https://github.com/howz97/algorithm")[github.com/howz97/algorithm] #h(1fr) 始于 2019/07 \
用Golang实现的算法库，覆盖Sedgewick的教材《Algorithms》所有内容。包括:
- binary tree, avl tree, red-black tree, hash map
- bfs, dfs, kosaraju, minimum spanning tree (prim, kruskal), shortest path (dijkstra, topological, bellmanford)
- string sort, trie tree, substring search, regular expression, data compression
- binary heap, leftist heap, binomial heap

*LSM-Tree* #link("https://github.com/howz97/lsm-tree")[github.com/howz97/lsm-tree] \
基于lsm-tree实现的KV存储。 实现了基本的 compaction, WAL, 基于MVCC的transaction, 以及 serializable snapshot isolation

*Bitcask* #link("https://github.com/howz97/bitcask")[github.com/howz97/bitcask] \
基于bitcask的KV存储, 用 async rust实现

*Time-wheel* #link("https://github.com/howz97/time_wheel")[github.com/howz97/time_wheel] \
Rust实现的timer

*开源贡献* \
- #link("https://github.com/etcd-io/etcd/pull/13870")[github.com/etcd-io/etcd/pull/13870]
- #link("https://github.com/MariaDB/server/pull/2813")[github.com/MariaDB/server/pull/2813]
